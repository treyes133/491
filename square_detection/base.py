import cv2
import numpy as np
import matplotlib.pyplot as plt

#input_image = "live images\\lsla\\3.jpg"
#input_image = "live images\\msla\\3.jpg"
input_image = "live images\\ssla\\1.jpg"
img = cv2.imread(input_image)
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

starting_lines = []
distance = 200
max_ll = 0
slope_ignore = 1.5
for line in lines:
    for x1,y1,x2,y2 in line:
        cv2.line(line_image,(x1,y1),(x2,y2),(255,0,0),5)
        if y1 > rows-distance or y2 > rows-distance:
            print(abs((y2-y1)/(x2-x1)))
            if (x2 != 0 and x1 != 0) and abs((y2-y1)/(x2-x1)) > slope_ignore:
                if y1 > y2:
                    starting_lines.append([x1,y1,x2,y2])
                else:
                    starting_lines.append([x2,y2,x1,y1])
print(starting_lines)
max_distance = 0
l1 = None
l2 = None
for line in starting_lines:
    for line2 in starting_lines:
        if line != line2:
            if abs(line[0]-line2[0]) > max_distance:
                l1 = line
                l2 = line2
                max_distance = abs(line[0]-line2[0])

max_height = int(rows/(rows/100))


x3_1 = int((((max_height)-l1[1])/(l1[3]-l1[1]))*(l1[2]-l1[0]) + l1[0])
x3_2 = int((((max_height)-l2[1])/(l2[3]-l2[1]))*(l2[2]-l2[0]) + l2[0])

cv2.line(line_image,(l1[0],l1[1]),(x3_1,max_height),(255,0,0),5)
cv2.line(line_image,(l2[0],l2[1]),(x3_2,max_height),(255,0,0),5)



line1 = [l1[0],l1[1],x3_1,max_height]
line2 = [l2[0],l2[1],x3_2,max_height]



lines_edges = cv2.addWeighted(img, 0.8, line_image, 1, 0)





 
  
pts1 = np.float32([[line1[2],line1[3]],[line2[2],line2[3]],[line1[0],line1[1]],[line2[0],line2[1]]])
pts2 = np.float32([[0,0],[1000,0],[0,1000],[1000,1000]])

M = cv2.getPerspectiveTransform(pts1,pts2)

dst = cv2.warpPerspective(img,M,(1000,1000))

cv2.line(img,(l1[0],l1[1]),(x3_1,max_height),(255,0,0),5)
cv2.line(img,(l2[0],l2[1]),(x3_2,max_height),(255,0,0),5)

plt.subplot(221),plt.imshow(img),plt.title('Input')
plt.subplot(222),plt.imshow(edges),plt.title('Edge Detection')
plt.subplot(223),plt.imshow(line_image),plt.title('Line Detection')
plt.subplot(224),plt.imshow(dst),plt.title('Output')

plt.show()
