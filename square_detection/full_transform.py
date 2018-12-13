import cv2
import numpy as np
import matplotlib.pyplot as plt
import time

time_start = time.time()

#input_image = "live images\\lsla\\1.jpg"
#input_image = "live images\\msla\\2.jpg"
#input_image = "live images\\ssla\\1.jpg"
input_image = "capture_test.png"

img = cv2.imread(input_image)
rows,cols,ch = img.shape


#this set of coordinates works well for the 100 unit sized transformation
pts1 = np.float32([[276,50],[670,45],[4,540],[946,536]])
pts2 = np.float32([[0,0],[200,0],[0,400],[200,400]])

M = cv2.getPerspectiveTransform(pts1,pts2)

dst = cv2.warpPerspective(img,M,(200,400))

time_stop = time.time()

td = time_stop-time_start

print("Time :: ",td)

plt.figure(2)
plt.subplot(121),plt.imshow(img),plt.title('Input')
plt.subplot(122),plt.imshow(dst),plt.title('Output')

cv2.imwrite("test_image.png",dst)

plt.show()

