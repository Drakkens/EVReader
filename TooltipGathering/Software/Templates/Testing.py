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


# ToDo: Find 0s, move to right, try guessing leftover number
# Load the input and template images
input_img = cv.imread('../Tooltips/Warden/Will.jpg')
# input_img = cv.imread('../Tooltips/Beorning/Agility.jpg')
template_img = cv.imread('./0.jpg')

# Convert both images to grayscale
input_gray = cv.cvtColor(input_img, cv.COLOR_BGR2GRAY)
template_gray = cv.cvtColor(template_img, cv.COLOR_BGR2GRAY)

# Apply template matching
result = cv.matchTemplate(input_gray, template_gray, cv.TM_CCOEFF_NORMED)

thresh = cv.threshold(result, 0.90, 1, cv.THRESH_BINARY)[1]

# Define Translation Matrix (M = [[1, 0, translationXAxis], [0, 1, translationYAxis]], where translation = Px moved
translationXAxis = 100
translationYAxis = 0

M = np.float32([[1, 0, translationXAxis], [0, 1, translationYAxis]])
# Image Shape
rows, columns = input_img.shape[:2]
translated_image = cv.warpAffine(thresh, M, (columns, rows))

# Set a threshold value
threshold = 0.7

# Find locations with a high similarity score
locations = np.where(result >= threshold)
locations = list(zip(*locations[::-1]))

# Draw a rectangle around each match in the input image
# print(len(locations))
print(len(locations))


for loc in locations:
    top_left = loc
    bottom_right = (top_left[0] + template_gray.shape[1], top_left[1] + template_gray.shape[0])
    cv.rectangle(input_img, top_left, bottom_right, (0, 0, 255), 2)

    # print(f"Tooltip \n  {input_gray[top_left[1]:bottom_right[1], top_left[0]:bottom_right[0]]}")
    # print(f"Zero \n  {template_gray}")

    # Need to make it so negative numbers = 0 instead of 255

    x0, y0 = top_left
    x1, y1 = bottom_right
    # print('Comparison:')
    for x in range(0, x1 - x0):
        for y in range(0, y1 - y0):

            if input_gray[y0 + y, x0 + x] <= template_gray[y, x]:
                pixel = 0
            elif input_gray[y0 + y, x0 + x] - template_gray[y, x] < 40:
                pixel = 0
            else:
                # print(f'{input_gray[y0 + y, x0 + x]}, {template_gray[y, x]}')
                pixel = 205

            input_img[(y0 + y), (x0 + x)] = pixel

    # print(f"Tooltip Result \n {input_img[top_left[1]:bottom_right[1], top_left[0]:bottom_right[0]]}")
TESSERACT_CONFIG = "--oem 3, --psm 11, -c tessedit_debug_fonts=1"

convert_stat_tooltip_to_ocr(input_img)


mod_in_img = cv.cvtColor(input_img, cv.COLOR_BGR2GRAY)

print(pytesseract.image_to_string(input_img,
                                  config=TESSERACT_CONFIG, lang='LOTRO-Stats-2')
      )
# Show the result
cv.imshow('Result', input_img)
cv.waitKey(0)
cv.destroyAllWindows()
