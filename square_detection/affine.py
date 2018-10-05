import numpy as np
import cv2
import matplotlib.pyplot as plt

img = cv2.imread('grab6.png')
rows,cols,ch = img.shape

pts1 = np.float32([[0,0],[rows,0],[0,cols]])
pts2 = np.float32([[10,100],[200,50],[100,450]])

M = cv2.getAffineTransform(pts1,pts2)

dst = cv2.warpAffine(img,M,(cols,rows))

blur = cv2.blur(dst,(10,10))


pts1 = np.float32([[10,100],[200,50],[100,450],[200,450]])
pts2 = np.float32([[0,0],[rows,0],[0,cols],[rows,cols]])
M = cv2.getPerspectiveTransform(pts1,pts2)
final = cv2.warpPerspective(img,M,(300,300))


plt.subplot(221),plt.imshow(img),plt.title('Input')
plt.subplot(222),plt.imshow(dst),plt.title('Affine')
plt.subplot(223),plt.imshow(blur),plt.title('Blur')
plt.subplot(224),plt.imshow(final),plt.title('Output')
plt.show()
