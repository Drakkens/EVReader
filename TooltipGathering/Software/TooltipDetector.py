import sys
from time import sleep
from PIL import Image
from enum import Enum

import cv2 as cv
import pyautogui
import pygetwindow
import numpy as np
import pytesseract
import csv
import os

from Rectangle import Rectangle
from Item import Item


class Mode(Enum):
    ITEM = 1


TARGET_WINDOW_TITLE = 'The Lord of the Rings Online™'
TESSERACT_CONFIG = "--oem 3, --psm 11"
pytesseract.tesseract_cmd = r"C:\Program Files\Tesseract-OCR\tesseract.exe"

file = open("Tooltip_Gathering.csv", 'w', newline='')
writer = csv.writer(file)


def convert_to_binary(screenshot, dilate=False):
    gray_image = cv.cvtColor(screenshot, cv.COLOR_RGB2GRAY)
    ret, mask = cv.threshold(gray_image, 35, 255, cv.THRESH_BINARY)

    if dilate:
        mask = cv.dilate(mask, (1, 1))

    return cv.bitwise_not(mask)


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


def find_rectangles(area, analysis):
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


def get_tooltip_image(screenshot, tooltip, cover=False):
    cropped = (screenshot[tooltip.y0:tooltip.y1, tooltip.x0:tooltip.x1])

    if cover:
        cropped[15:55, 5:42] = 0
        cover_essence_slots(cropped)

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


def cover_essence_slots(image):
    essence_slot_lower_color = (10, 64, 64)
    essence_slot_higher_color = (30, 255, 255)

    hsv_image = cv.cvtColor(image, cv.COLOR_RGB2HSV)
    essence_slots_borders = cv.inRange(hsv_image, essence_slot_lower_color, essence_slot_higher_color)

    analysis = cv.connectedComponentsWithStats(essence_slots_borders, 4, cv.CV_32S)

    essence_slots_positions = find_rectangles(100, analysis)

    for essence_slot in essence_slots_positions:
        image[essence_slot.y0:essence_slot.y1, essence_slot.x0:essence_slot.x1] = 0


def main(mode):
    try:
        while True:
            sleep(0.05)
            # color_image = cv.rectangle(color_image, start, end, (0, 0, 255), -1)
            result = get_screen_contents()
            if result is not None:
                screenshot, analysis = result
                # binary_screenshot = convert_to_binary(screenshot)
                # binary_screenshot_dilated = convert_to_binary(screenshot, True)
                tooltips = find_rectangles(650, analysis)

                for tooltip in tooltips:
                    human_image = get_tooltip_image(screenshot, tooltip)
                    ocr_image = get_tooltip_image(screenshot, tooltip, True)

                    tooltip_text_normal = pytesseract.image_to_string(ocr_image,
                                                                      config=TESSERACT_CONFIG)
                    processed_text_normal = list(filter(None, list(tooltip_text_normal.replace(":", "").replace("-", "").split("\n"))))

                    if mode == Mode.ITEM:
                        item = Item(processed_text_normal)
                        human_image.save(f"./Tooltips/Items/{item.name}.jpg")
                        ocr_image.save(f"./Tooltips/Items/{item.name}_ocr.jpg")

                        print(item)
                    writer.writerow(processed_text_normal)

            # Debug
            # cv.imshow("Test", color_image)
            # cv.waitKey(0)
            # cv.destroyAllWindows()

    except KeyboardInterrupt:
        print("Exiting...")
        sys.exit(130)


main(Mode.ITEM)
