from mpl_toolkits.mplot3d import Axes3D
import numpy as np
import matplotlib.pyplot as plt
import matplotlib.image as mpimg
import cv2,math

img = cv2.imread("floor150.png")

rows,cols,ch = img.shape

#theta = 0, x1==x3,x2==x4
#theta = 90,x2-x1/2 ==x3, x2-x1/2==x4 x3==x4

x1 = 0
y1 = 0
x2 = 2000
y2 = 0

#need to solve for x3
x3 = 0
y3 = 2200

#need to solve for x4
x4 = 0
y4 = 2200


step = 100


for y in range(0,rows,step):
    y1 = rows-y
    y2 = y1
    y3 = 2200+y1
    y4 = 2200+y2
    theta = 30
    offset = math.sin(math.radians(theta))*((x2-x1)/2)
    #print(offset)
    x3 = x1+offset
    x4 = x2-offset
    
    pts_src = np.float32([[x1,y1],[x2,y2],[x3,y3],[x4,y4]])
    pts_dst = np.float32([[0,0],[2000,0],[0,2000],[2000,2000]])

    h, status = cv2.findHomography(pts_src, pts_dst)
    im_out = cv2.warpPerspective(img, h, (2000,2000))

    cv2.imwrite("stepper\\output"+str(y1)+".png",im_out)


