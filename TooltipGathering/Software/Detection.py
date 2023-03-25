import sys
from time import sleep
from PIL import Image

import cv2 as cv
import pyautogui
import pygetwindow
import numpy as np
import pytesseract
import csv

pytesseract.tesseract_cmd = r"C:\Program Files\Tesseract-OCR\tesseract.exe"

file = open("Tooltip_Gathering.csv", 'w', newline='')
writer = csv.writer(file)

while True:
    try:
        focused_window = pygetwindow.getActiveWindowTitle()

        if focused_window == 'The Lord of the Rings Online™':
            sleep(0.05)
            screenshot = np.array(pyautogui.screenshot())
            # color_image = cv.cvtColor(screenshot, cv.COLOR_RGB2BGR)
            image = cv.cvtColor(screenshot, cv.COLOR_RGB2GRAY)

            # Use with Custom Skin
            canny = cv.Canny(image, 1450, 750)
            # canny = cv.Canny(image, 255, 255)
            # cv.imshow("Canny", canny)

            analysis = cv.connectedComponentsWithStats(canny, 4, cv.CV_32S)
            (total_labels, label_ids, values, centroid) = analysis

            count = 0
            for index in range(1, total_labels):
                item_area = values[index, cv.CC_STAT_AREA]
                if item_area > 650:
                    count += 1
                    item_x0 = values[index, cv.CC_STAT_LEFT]
                    item_y0 = values[index, cv.CC_STAT_TOP]
                    start = (item_x0, item_y0)

                    item_x1 = item_x0 + values[index, cv.CC_STAT_WIDTH]
                    item_y1 = item_y0 + values[index, cv.CC_STAT_HEIGHT]
                    end = (item_x1, item_y1)

                    # color_image = cv.rectangle(color_image, start, end, (0, 0, 255), -1)

                    cropped = (screenshot[item_y0:item_y1, item_x0:item_x1])
                    resized = cv.resize(cropped, (values[index, cv.CC_STAT_WIDTH] * 2, values[index, cv.CC_STAT_HEIGHT] * 2), cv.INTER_AREA)
                    pil_image = Image.fromarray(resized)
                    # pil_image.save(f"{count}.jpg")

                    # pil_image.save(f"{count}.jpg")

                    tooltip_text = pytesseract.image_to_string(pil_image, config="--oem 3")
                    writer.writerow(tooltip_text.split("\n"))

            print(count)

            # Debug
            # cv.imshow("Test", color_image)
            # cv.waitKey(0)
            # cv.destroyAllWindows()

    except KeyboardInterrupt:
        print("Stopping...")
        sys.exit(130)
