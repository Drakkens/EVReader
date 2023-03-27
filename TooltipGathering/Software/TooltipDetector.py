import sys
from time import sleep
from PIL import Image

import cv2 as cv
import pyautogui
import pygetwindow
import numpy as np
import pytesseract
import csv
import os

from Rectangle import Rectangle

TARGET_WINDOW_TITLE = 'The Lord of the Rings Online™'
pytesseract.tesseract_cmd = r"C:\Program Files\Tesseract-OCR\tesseract.exe"

file = open("Tooltip_Gathering.csv", 'w', newline='')
writer = csv.writer(file)


def get_gray_pixels(screenshot):
    hsv = cv.cvtColor(screenshot, cv.COLOR_RGB2HSV)

    # lower_gray = np.array([0, 0, 2])
    # upper_gray = np.array([0, 0, 128])
    lower_gray = np.array([0, 0, 0])
    upper_gray = np.array([0, 0, 0])

    # mask = cv.inRange(screenshot, (0, 50, 50), (10, 255, 255)) Grabs essence slots?
    mask = cv.inRange(hsv, lower_gray, upper_gray)
    # mask = cv.erode(mask, (1, 1))


    return mask


def get_screen_contents():
    focused_window = pygetwindow.getActiveWindowTitle()

    if focused_window == TARGET_WINDOW_TITLE:
        screenshot = np.array(pyautogui.screenshot())

        # color_image = cv.cvtColor(screenshot, cv.COLOR_RGB2BGR)
        image = cv.cvtColor(screenshot, cv.COLOR_RGB2GRAY)

        # Use with Custom Skin
        canny = cv.Canny(image, 1450, 750)
        # canny = cv.Canny(image, 255, 255)
        # cv.imshow("Canny", canny)

        analysis = cv.connectedComponentsWithStats(canny, 4, cv.CV_32S)

        return screenshot, analysis


def find_tooltips(area, analysis):
    count = 0

    total_labels = analysis[0]
    values = analysis[2]

    rectangles = []

    for index in range(1, total_labels):
        item_area = values[index, cv.CC_STAT_AREA]
        if item_area > area:
            count += 1

            item_x0 = values[index, cv.CC_STAT_LEFT]
            item_y0 = values[index, cv.CC_STAT_TOP]
            start = (item_x0, item_y0)

            item_x1 = item_x0 + values[index, cv.CC_STAT_WIDTH]
            item_y1 = item_y0 + values[index, cv.CC_STAT_HEIGHT]
            end = (item_x1, item_y1)

            rectangles.append(Rectangle.from_points(start, end))

    return rectangles


def get_tooltip_image(screenshot, tooltip, gray_mask):
    cropped = (screenshot[tooltip.y0:tooltip.y1, tooltip.x0:tooltip.x1])

    # cropped_gray_mask = gray_mask[tooltip.y0:tooltip.y1, tooltip.x0:tooltip.x1]
    # cropped[cropped_gray_mask > 0] = (0, 255, 0)

    resized = cv.resize(cropped, (tooltip.width * 2, tooltip.height * 2), cv.INTER_AREA)
    return Image.fromarray(resized)


def stat_tooltip(processed_text, image):
    class_separator = processed_text[1].find(',')
    class_name = processed_text[1][5:class_separator].capitalize() or None

    stat_name_separator = processed_text[0].find(' ')
    stat_name = processed_text[0][:stat_name_separator].capitalize()

    stat_amount_separator = processed_text[0].find('(')
    if stat_amount_separator == -1:
        stat_amount_separator = len(processed_text[0])

    stat_amount = processed_text[0][stat_name_separator:stat_amount_separator]

    if not os.path.isdir(f"./Tooltips/{class_name}"):
        os.mkdir(f"./Tooltips/{class_name}")

    print(class_name, stat_name, stat_amount)
    image.save(f"./Tooltips/{class_name}/{stat_name}.jpg")


def main():
    try:
        while True:
            sleep(0.05)
            # color_image = cv.rectangle(color_image, start, end, (0, 0, 255), -1)
            sleep(1)
            result = get_screen_contents()
            if result is not None:
                screenshot, analysis = result
                gray_mask = get_gray_pixels(screenshot)
                tooltips = find_tooltips(650, analysis)

                for tooltip in tooltips:
                    image = get_tooltip_image(screenshot, tooltip, gray_mask)
                    image.save(f"./image.jpg")
                    tooltip_text = pytesseract.image_to_string(image, config="--oem 3, --psm 11, tessedit_write_images=true")

                    processed_text = list(filter(None, list(tooltip_text.replace(":", "").split("\n"))))
                    print(processed_text)
                    # stat_tooltip(processed_text, image)
                    writer.writerow(processed_text)

            # Debug
            # cv.imshow("Test", color_image)
            # cv.waitKey(0)
            # cv.destroyAllWindows()

    except KeyboardInterrupt:
        print("Exiting...")
        sys.exit(130)


main()
