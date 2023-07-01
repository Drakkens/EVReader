import sys
from enum import Enum
from time import sleep

import cv2 as cv
import numpy as np
import pyautogui
import pygetwindow
import pytesseract
from PIL import Image

from Classes.Tooltips.ItemTooltip import ItemTooltip
from Classes.Tooltips.MainStatTooltip import MainStatTooltip
from Classes.Utils.Rectangle import Rectangle
from Classes.Utils.Tkinter import get_window_instance


class Mode(Enum):
    ITEM = 1
    STATS = 2


TARGET_WINDOW_TITLE = 'The Lord of the Rings Online™'
TESSERACT_CONFIG = "--oem 3, --psm 11"
pytesseract.tesseract_cmd = r"C:\Program Files\Tesseract-OCR\tesseract.exe"


def find_template_locations(image_to_search, template: str):
    template_image = cv.cvtColor(cv.imread(template), cv.COLOR_RGB2BGR)

    # Set Images to Gray for more accurate Masking
    image_gray = cv.cvtColor(image_to_search, cv.COLOR_BGR2GRAY)
    template_gray = cv.cvtColor(template_image, cv.COLOR_BGR2GRAY)

    result = cv.matchTemplate(image_gray, template_gray, cv.TM_CCOEFF_NORMED)
    # Find locations with a high similarity score
    locations = np.where(result >= 0.85)
    locations = list(zip(*locations[::-1]))

    return locations


def delete_zeros(image, locations, template):
    template_image = cv.cvtColor(cv.imread(template), cv.COLOR_RGB2BGR)
    template_gray = cv.cvtColor(template_image, cv.COLOR_BGR2GRAY)

    image_gray = cv.cvtColor(image, cv.COLOR_BGR2GRAY)

    for top_left in locations:
        bottom_right = (top_left[0] + template_gray.shape[1], top_left[1] + template_gray.shape[0])

        x0, y0 = top_left
        x1, y1 = bottom_right

        # Get every pixel, and if number < 0, set to 0.
        for x in range(0, x1 - x0):
            for y in range(0, y1 - y0):
                if image_gray[y0 + y, x0 + x] <= template_gray[y, x]:
                    pixel = 0
                elif image_gray[y0 + y, x0 + x] - template_gray[y, x] < 40:
                    pixel = 0
                else:
                    pixel = 205
                # Deletes Found 0s
                image[(y0 + y), (x0 + x)] = pixel


def reinsert_zeros_and_translate_content(image, locations, template):
    # ToDo: Could use some work on reinsertion (8 and 9 trailing after a 0 are partially missing, tho it did seem to read them well)
    template_image = cv.cvtColor(cv.imread(template), cv.COLOR_RGB2BGR)
    template_gray = cv.cvtColor(template_image, cv.COLOR_BGR2GRAY)

    image_gray = cv.cvtColor(image, cv.COLOR_BGR2GRAY)
    image_height, image_width = image.shape[:-1]

    for top_left in locations:
        bottom_right = (top_left[0] + template_gray.shape[1], top_left[1] + template_gray.shape[0])
        x0, y0 = top_left
        x1, y1 = bottom_right

        # Gets Content to the Right of Inserted 0 (and 2 pixels below, because 9 is a bit taller)
        pixels_to_the_right = image[y0:y1 + 2, (x1 + 3):image_width - 2].copy()

        # Inserts New 0s 3 pixels to the right of the original
        image[y0:y1, (x0 + 3):(x1 + 3)] = template_image

        # Deletes that content
        image[y0:y1 + 2, (x1 + 3):image_width] = 0

        # Reinserts 5 pixels to the right
        image[y0:y1 + 2, (x1 + 5):image_width] = pixels_to_the_right


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
        image = cv.cvtColor(screenshot, cv.COLOR_RGB2GRAY)

        # Use with Custom Skin
        canny = cv.Canny(image, 1450, 750)
        analysis = cv.connectedComponentsWithStats(canny, 4, cv.CV_32S)
        return screenshot, analysis


def find_rectangles(area, analysis):
    total_labels = analysis[0]
    values = analysis[2]

    rectangles = []

    for index in range(1, total_labels):
        item_area = values[index, cv.CC_STAT_AREA]
        if item_area > area:
            item_x0 = values[index, cv.CC_STAT_LEFT]
            item_y0 = values[index, cv.CC_STAT_TOP]
            start = (item_x0, item_y0)

            item_x1 = item_x0 + values[index, cv.CC_STAT_WIDTH]
            item_y1 = item_y0 + values[index, cv.CC_STAT_HEIGHT]
            end = (item_x1, item_y1)

            rectangles.append(Rectangle.from_points(start, end))

    return rectangles


def convert_stat_tooltip_to_ocr(image):
    hsv_image = cv.cvtColor(image, cv.COLOR_BGR2HSV)
    # white_pixels = cv.inRange(hsv_image, (0, 0, 62), (180, 0, 255))
    # red_pixels = cv.inRange(hsv_image, (0, 128, 64), (15, 255, 200))
    blue_pixels = cv.inRange(hsv_image, (15, 60, 64), (30, 255, 200))

    # image[white_pixels == 255] = (0, 197, 41)
    # image[red_pixels == 255] = (0, 197, 41)

    # Name font issues with higher threshold
    white_pixels_name = cv.inRange(hsv_image[0:hsv_image.shape[0] // 2, 0:hsv_image.shape[1]], (0, 0, 55),
                                   (180, 0, 255))

    # Contribution issues with lower threshold
    white_pixels_contribution = cv.inRange(hsv_image[hsv_image.shape[0] // 2:hsv_image.shape[0], 0:hsv_image.shape[1]],
                                           (0, 0, 75), (180, 0, 255))

    # Combine upper half and lower half to full tooltip.
    white_pixels = np.array([white_pixels_name, white_pixels_contribution])
    reshaped_white_pixels = white_pixels.reshape(white_pixels.shape[0] * white_pixels.shape[1], white_pixels.shape[2])

    image[blue_pixels > 0] = (0, 255, 0)
    image[reshaped_white_pixels == 255] = (0, 255, 0)


def get_tooltip_image(screenshot, tooltip, ocr=False, mode=None):
    cropped = (screenshot[tooltip.y0:tooltip.y1, tooltip.x0:tooltip.x1])

    if ocr:
        if mode == Mode.ITEM:
            cover_unwanted_icons(cropped)
            change_white_to_green(cropped)
            
        if mode == Mode.STATS:
            convert_stat_tooltip_to_ocr(cropped)

    resized = cv.resize(cropped, (tooltip.width * 2, tooltip.height * 2), cv.INTER_AREA)
    # cropped = cv.filter2D(cropped, -1, np.array([[-1, -1, -1], [-1, 9, -1], [-1, -1, -1]]))

    return resized


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

    if 255 in equipped_text_borders[5:10, 15:25]:
        image[25:65, 5:40] = 0
        print('Equipped')
    else:
        image[5:45, 5:40] = 0

    for embers_icon_position in embers_icon_positions:
        image[embers_icon_position.y0:embers_icon_position.y1, embers_icon_position.x0:embers_icon_position.x1] = 0

    for essence_slot in essence_slots_positions:
        image[essence_slot.y0:essence_slot.y1, essence_slot.x0:essence_slot.x1] = 0


def change_white_to_green(cropped):
    hsv_image = cv.cvtColor(cropped, cv.COLOR_BGR2HSV)
    white_pixels = cv.inRange(hsv_image, (0, 0, 55), (180, 0, 255))
    cropped[white_pixels > 0] = (0, 255, 0)


def process_stat_tooltip(screenshot, tooltip, mode):
    human_image = get_tooltip_image(screenshot, tooltip, False, mode)
    ocr_image = get_tooltip_image(screenshot, tooltip, True, mode)

    TEMPLATE = r'C:\Users\joanf\Documents\Fleet\LOTRO-Repo\TooltipGathering\Software\Templates\0.jpg'
    locations = find_template_locations(ocr_image, TEMPLATE)
    delete_zeros(ocr_image, locations, TEMPLATE)
    reinsert_zeros_and_translate_content(ocr_image, locations, TEMPLATE)

    tooltip_text_normal = pytesseract.image_to_string(Image.fromarray(ocr_image),
                                                      config=TESSERACT_CONFIG, lang='LOTRONumbers4+eng')
    processed_text_normal = list(
        filter(None,
               list(tooltip_text_normal
                    .upper()
                    .replace(":", "")
                    .replace("-", "")
                    .split("\n"))))

    stat_tooltip: MainStatTooltip = MainStatTooltip(processed_text_normal)

    print(stat_tooltip)

def process_item_tooltip(screenshot, tooltip, mode, position=None):
    human_image = get_tooltip_image(screenshot, tooltip, False, mode)
    ocr_image = get_tooltip_image(screenshot, tooltip, True, mode)

    tooltip_text_normal = pytesseract.image_to_string(Image.fromarray(ocr_image),
                                                      config=TESSERACT_CONFIG, lang='eng')
    processed_text_normal = list(
        filter(None,
               list(tooltip_text_normal
                    .replace(":", "")
                    .replace(";", "")
                    .replace("-", "")
                    .split("\n"))))

    item: ItemTooltip = ItemTooltip(processed_text_normal, position)

    if item not in get_window_instance().items:
        get_window_instance().items[item.name + item.item_level] = [item.essence_value, [item.start, item.end]]

    # human_image.save(f"./Tooltips/Items/{item.name}.jpg")
    Image.fromarray(ocr_image).save(f"./Tooltips/Items/{item.name}_ocr.jpg")

    print(item)
