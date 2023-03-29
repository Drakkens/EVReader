import cv2 as cv
import numpy as np

# ToDo: Find 0s, move to right, try guessing leftover number
# Load the input and template images
input_img = cv.imread('../Tooltips/Guardian/Fate.jpg')
# input_img = cv.imread('../Tooltips/Beorning/Agility.jpg')
template_img = cv.imread('./0.jpg')

# Convert both images to grayscale
input_gray = cv.cvtColor(input_img, cv.COLOR_BGR2GRAY)
template_gray = cv.cvtColor(template_img, cv.COLOR_BGR2GRAY)

# Apply template matching
result = cv.matchTemplate(input_gray, template_gray, cv.TM_CCOEFF_NORMED)

thresh = cv.threshold(result, 0.9, 1, cv.THRESH_BINARY)[1]

# Define Translation Matrix (M = [[1, 0, translationXAxis], [0, 1, translationYAxis]], where translation = Px moved
translationXAxis = 100
translationYAxis = 0

M = np.float32([[1, 0, translationXAxis], [0, 1, translationYAxis]])
# Image Shape
rows, columns = input_img.shape[:2]
translated_image = cv.warpAffine(thresh, M, (columns, rows))

# Set a threshold value
threshold = 0.9

# Find locations with a high similarity score
locations = np.where(result >= threshold)
locations = list(zip(*locations[::-1]))

cv.imshow('translated_image', translated_image)

# Draw a rectangle around each match in the input image
# print(len(locations))
for loc in locations:
    top_left = loc
    bottom_right = (top_left[0] + template_gray.shape[1], top_left[1] + template_gray.shape[0])
    cv.rectangle(input_img, top_left, bottom_right, (0, 0, 255), 2)

    cv.imshow(str(top_left[1]), input_gray[top_left[1]:bottom_right[1], top_left[0]:bottom_right[0]])

    print(f"Tooltip \n  {input_gray[top_left[1]:bottom_right[1], top_left[0]:bottom_right[0]]}")
    print(f"Zero \n  {template_gray}")

    # Need to make it so negative numbers = 0 instead of 255
    input_gray[top_left[1]:bottom_right[1], top_left[0]:bottom_right[0]] = input_gray[top_left[1]:bottom_right[1],
                                                                           top_left[0]:bottom_right[0]] - template_gray

    print(f"Tooltip Result \n {input_gray[top_left[1]:bottom_right[1], top_left[0]:bottom_right[0]]}")

# Show the result
cv.imshow('Result', input_gray)
cv.waitKey(0)
cv.destroyAllWindows()
