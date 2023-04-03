import cv2 as cv
import numpy as np
import pytesseract
from PIL import Image


def convert_stat_tooltip_to_ocr(image):
    hsv_image = cv.cvtColor(image, cv.COLOR_RGB2HSV)
    # white_pixels = cv.inRange(hsv_image, (0, 0, 62), (180, 0, 255))
    # red_pixels = cv.inRange(hsv_image, (0, 128, 64), (15, 255, 200))
    blue_pixels = cv.inRange(hsv_image, (20, 60, 64), (30, 255, 200))

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


def find_template_locations(image_to_search, template: str):
    template_image = cv.cvtColor(cv.imread(template), cv.RGB2GBR)
    image_height, image_width = image_to_search.shape[:-1]

    # Set Images to Gray for more accurate Masking
    image_gray = cv.cvtColor(image_to_search, cv.BGR2GRAY)
    template_gray = cv.cvtColor(template_image, cv.BGR2GRAY)

    result = cv.matchTemplate(input_gray, template_gray, cv.TM_CCOEFF_NORMED)
    # Find locations with a high similarity score
    locations = np.where(result >= 0.85)
    locations = list(zip(*locations[::-1]))

    return locations

# Load the input and template images
input_img = cv.imread('../Tooltips/Hunter/Vitality.jpg')
template_img = cv.imread('./0.jpg')

image_height, image_width = input_img.shape[:-1]

# Convert both images to grayscale
input_gray = cv.cvtColor(input_img, cv.COLOR_BGR2GRAY)
template_gray = cv.cvtColor(template_img, cv.COLOR_BGR2GRAY)

# Apply template matching
result = cv.matchTemplate(input_gray, template_gray, cv.TM_CCOEFF_NORMED)

# Set a threshold value
threshold = 0.85

# Find locations with a high similarity score
locations = np.where(result >= threshold)
locations = list(zip(*locations[::-1]))

print((locations))

def delete_zero(top_left, bottom_right):
    x0, y0 = top_left
    x1, y1 = bottom_right

    # Get every pixel, and if number < 0, set to 0.
    for x in range(0, x1 - x0):
        for y in range(0, y1 - y0):
            if input_gray[y0 + y, x0 + x] <= template_gray[y, x]:
                pixel = 0
            elif input_gray[y0 + y, x0 + x] - template_gray[y, x] < 40:
                pixel = 0
            else:
                pixel = 205
            # Deletes Found 0s
            input_img[(y0 + y), (x0 + x)] = pixel

# Locations = Array of (x0, y0) of Matches
for top_left in locations:
    bottom_right = (top_left[0] + template_gray.shape[1], top_left[1] + template_gray.shape[0])
    x0, y0 = top_left
    x1, y1 = bottom_right

    delete_zero(top_left, bottom_right)


for top_left in locations:
    bottom_right = (top_left[0] + template_gray.shape[1], top_left[1] + template_gray.shape[0])
    x0, y0 = top_left
    x1, y1 = bottom_right

    # Gets Content to the Right of Inserted 0 (and 2 pixels below, because 9 is a bit taller)
    pixels_to_the_right = input_img[y0:y1 + 2, (x1 + 3):image_width - 2].copy()

    # Inserts New 0s 3 pixels to the right of the original
    input_img[y0:y1, (x0 + 3):(x1 + 3)] = template_img

    # Deletes that content
    input_img[y0:y1 + 2, (x1 + 3):image_width] = 0

    # Reinserts 5 pixels to the right
    input_img[y0:y1 + 2, (x1 + 5):image_width] = pixels_to_the_right


    # input_img[input_img[y0:y1 + 2, x1 + 6:image_width - 3]] = input_img[y0:y1 + 2, x1 + 3:image_width]

    # print(f"Tooltip Result \n {input_img[top_left[1]:bottom_right[1], top_left[0]:bottom_right[0]]}")
TESSERACT_CONFIG = "--oem 3, --psm 11, -c tessedit_debug_fonts=1"

convert_stat_tooltip_to_ocr(input_img)

print(pytesseract.image_to_string(input_img,
                                  config=TESSERACT_CONFIG,
                                  lang='LOTRONumbers4+eng'))
# Show the result
cv.imshow('Result', input_img)
cv.waitKey(0)
cv.destroyAllWindows()
