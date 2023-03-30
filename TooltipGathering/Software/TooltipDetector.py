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
from MainStatTooltip import MainStatTooltip
import DatabaseHandler


class Mode(Enum):
    ITEM = 1
    STATS = 2


database = DatabaseHandler.DatabaseHandler()
database_mappings = database.get_id_mappings()

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


def convert_stat_tooltip_to_ocr(image):
    hsv_image = cv.cvtColor(image, cv.COLOR_RGB2HSV)
    # white_pixels = cv.inRange(hsv_image, (0, 0, 62), (180, 0, 255))
    # red_pixels = cv.inRange(hsv_image, (0, 128, 64), (15, 255, 200))

    # image[white_pixels == 255] = (0, 197, 41)
    # image[red_pixels == 255] = (0, 197, 41)

    # Name font issues with higher threshold
    white_pixels_name = cv.inRange(hsv_image[0:hsv_image.shape[0] // 2, 0:hsv_image.shape[1]], (0, 0, 55),
                                   (180, 0, 255))
    # Contribution issues with lower threshold
    white_pixels_contribution = cv.inRange(hsv_image[hsv_image.shape[0] // 2:hsv_image.shape[0], 0:hsv_image.shape[1]],
                                           (0, 0, 55), (180, 0, 255))

    # Combine upper half and lower half to full tooltip.
    white_pixels = np.array([white_pixels_name, white_pixels_contribution])
    reshaped_white_pixels = white_pixels.reshape(white_pixels.shape[0] * white_pixels.shape[1], white_pixels.shape[2])

    image[reshaped_white_pixels == 255] = (0, 255, 0)


def get_tooltip_image(screenshot, tooltip, ocr=False, mode=None):
    cropped = (screenshot[tooltip.y0:tooltip.y1, tooltip.x0:tooltip.x1])

    if ocr:
        if mode == Mode.ITEM:
            cover_unwanted_icons(cropped)
        if mode == Mode.STATS:
            convert_stat_tooltip_to_ocr(cropped)

    resized = cv.resize(cropped, (tooltip.width * 2, tooltip.height * 2), cv.INTER_AREA)
    # cropped = cv.filter2D(cropped, -1, np.array([[-1, -1, -1], [-1, 9, -1], [-1, -1, -1]]))

    # cv.imshow("cropped", resized)
    # cv.waitKey(0)

    return Image.fromarray(resized)


def cover_unwanted_icons(image):
    # Finds Equipped Text (and some other orange colors)
    equipped_text_lower_color = (13, 200, 70)
    equipped_text_higher_color = (15, 255, 255)

    # Gets Essence Borders
    essence_slot_lower_color = (10, 64, 64)
    essence_slot_higher_color = (30, 255, 255)

    # Includes Yellow/Orange frame for Currency Items(?) -- Accidentally, grabs Copper Coin icon too.
    embers_slot_lower_color = (0, 50, 2)
    embers_slot_higher_color = (30, 200, 240)

    hsv_image = cv.cvtColor(image, cv.COLOR_RGB2HSV)
    essence_slots_borders = cv.inRange(hsv_image, essence_slot_lower_color, essence_slot_higher_color)
    embers_icon_borders = cv.inRange(hsv_image, embers_slot_lower_color, embers_slot_higher_color)
    equipped_text_borders = cv.inRange(hsv_image, equipped_text_lower_color, equipped_text_higher_color)

    analysis_essences = cv.connectedComponentsWithStats(essence_slots_borders, 4, cv.CV_32S)
    analysis_embers = cv.connectedComponentsWithStats(embers_icon_borders, 4, cv.CV_32S)

    essence_slots_positions = find_rectangles(100, analysis_essences)
    embers_icon_positions = find_rectangles(100, analysis_embers)

    if 255 in equipped_text_borders[10:35, 15:130]:
        image[25:65, 5:40] = 0
    else:
        image[5:45, 5:40] = 0

    for embers_icon_position in embers_icon_positions:
        image[embers_icon_position.y0:embers_icon_position.y1, embers_icon_position.x0:embers_icon_position.x1] = 0

    for essence_slot in essence_slots_positions:
        image[essence_slot.y0:essence_slot.y1, essence_slot.x0:essence_slot.x1] = 0


def main(mode):
    try:
        while True:
            sleep(0.05)
            result = get_screen_contents()
            if result is not None:
                screenshot, analysis = result
                tooltips = find_rectangles(650, analysis)

                for tooltip in tooltips:
                    if mode == Mode.ITEM:
                        human_image = get_tooltip_image(screenshot, tooltip, False, mode)
                        ocr_image = get_tooltip_image(screenshot, tooltip, True, mode)

                        tooltip_text_normal = pytesseract.image_to_string(ocr_image,
                                                                          config=TESSERACT_CONFIG, lang='eng')
                        processed_text_normal = list(
                            filter(None, list(tooltip_text_normal.replace(":", "").replace("-", "").split("\n"))))

                        item = Item(processed_text_normal)
                        human_image.save(f"./Tooltips/Items/{item.name}.jpg")
                        ocr_image.save(f"./Tooltips/Items/{item.name}_ocr.jpg")

                        print(item)
                    elif mode == Mode.STATS:
                        human_image = get_tooltip_image(screenshot, tooltip, False, mode)
                        ocr_image = get_tooltip_image(screenshot, tooltip, True, mode)

                        tooltip_text_normal = pytesseract.image_to_string(ocr_image,
                                                                          config=TESSERACT_CONFIG, lang='eng')
                        processed_text_normal = list(
                            filter(None,
                                   list(tooltip_text_normal.upper().replace(":", "").replace("-", "").split("\n"))))

                        stat_tooltip: MainStatTooltip = MainStatTooltip(processed_text_normal)
                        stat_tooltip.save_image(human_image)
                        stat_tooltip.save_image(ocr_image, True)
                        print(stat_tooltip)

                        for key, value in stat_tooltip.stats.items():
                            main_stat_id = database_mappings.get("MAIN_STATS").get(stat_tooltip.stat_name)
                            raw_stat_id = database_mappings.get("RAW_STATS").get(key)
                            class_id = database_mappings.get("CLASSES").get(stat_tooltip.class_name)

                            database.execute_insert(DatabaseHandler.create_insert_query("Main_Stats_to_Raw_Stats",
                                                                                        ["main_stat_id", "raw_stat_id",
                                                                                         "class_id", "amount"],
                                                                                        [main_stat_id, raw_stat_id,
                                                                                         class_id, value]
                                                                                        ))

            # Debug
            # cv.imshow("Test", color_image)
            # cv.waitKey(0)
            # cv.destroyAllWindows()

    except KeyboardInterrupt:
        print("Exiting...")
        sys.exit(130)


main(Mode.STATS)
