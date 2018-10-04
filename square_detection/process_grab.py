import cv2
import numpy as np
import matplotlib.pyplot as plt

#input_image = "live images\\lsla\\3.jpg"
#input_image = "live images\\msla\\3.jpg"
input_image = "grab.png"
img = cv2.imread(input_image)
print(img)
rows,cols,ch = img.shape
gray = cv2.cvtColor(img,cv2.COLOR_BGR2GRAY)

kernel_size = 5
blur_gray = cv2.GaussianBlur(gray,(kernel_size, kernel_size),0)


low_threshold = 25
high_threshold = 150
edges = cv2.Canny(blur_gray, low_threshold, high_threshold)

rho = 1  # distance resolution in pixels of the Hough grid
theta = np.pi / 180  # angular resolution in radians of the Hough grid
threshold = 15  # minimum number of votes (intersections in Hough grid cell)
min_line_length = 300 # minimum number of pixels making up a line
max_line_gap = 20  # maximum gap in pixels between connectable line segments
line_image = np.copy(img) * 0  # creating a blank to draw lines on

# Run Hough on edge detected image
# Output "lines" is an array containing endpoints of detected line segments
lines = cv2.HoughLinesP(edges, rho, theta, threshold, np.array([]),
                    min_line_length, max_line_gap)

if lines is not None:
    for line in lines:
        for x1,y1,x2,y2 in line:
            cv2.line(line_image,(x1,y1),(x2,y2),(255,0,0),5)

plt.subplot(221),plt.imshow(img),plt.title('Input')
plt.subplot(222),plt.imshow(edges),plt.title('Edge Detection')
plt.subplot(223),plt.imshow(line_image),plt.title('Line Detection')
plt.show()
