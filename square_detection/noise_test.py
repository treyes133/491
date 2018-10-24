from mpl_toolkits.mplot3d import Axes3D
import numpy as np
import matplotlib.pyplot as plt
import matplotlib.image as mpimg
import cv2,math


img = cv2.imread("output100.png")
rows,cols,chn= img.shape
gaussian_noise = img.copy()
mu = 10
sigma = 5

for x in range(0,cols):
    for y in range(0,rows):
        noise = (sigma*np.random.randn()) + mu
        if img[x][y][0] == 255:
            gaussian_noise[x][y] = img[x][y] - noise
        else:
            gaussian_noise[x][y] = img[x][y] + noise

plt.subplot(121),plt.imshow(img)
plt.subplot(122),plt.imshow(gaussian_noise)
plt.show()
