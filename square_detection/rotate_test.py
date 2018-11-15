import cv2
import numpy as np
import matplotlib.pyplot as plt
import time
def rotateImage(image, angle):
  image_center = tuple(np.array(image.shape[1::-1]) / 2)
  rot_mat = cv2.getRotationMatrix2D(image_center, angle, 1.0)
  result = cv2.warpAffine(image, rot_mat, image.shape[1::-1], flags=cv2.INTER_LINEAR)
  return result


time_start = time.time()

#input_image = "live images\\lsla\\1.jpg"
#input_image = "live images\\msla\\2.jpg"
#input_image = "live images\\ssla\\1.jpg"
input_image = "Capture.PNG"

img = cv2.imread(input_image)
rows,cols,ch = img.shape
gray = cv2.cvtColor(img,cv2.COLOR_BGR2GRAY)



rotated = rotateImage(gray,-20)


time_stop = time.time()

td = time_stop-time_start

print("Time :: ",td)

plt.figure(1)
plt.subplot(221),plt.imshow(gray),plt.title('Input')

plt.subplot(224),plt.imshow(rotated),plt.title('Output')


plt.show()
