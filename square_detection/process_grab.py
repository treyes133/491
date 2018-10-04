import sys,math,statistics
PY3 = sys.version_info[0] == 3

if PY3:
    xrange = range

import numpy as np
import cv2 as cv

def angle_cos(p0, p1, p2):
    d1, d2 = (p0-p1).astype('float'), (p2-p1).astype('float')
    return abs( np.dot(d1, d2) / np.sqrt( np.dot(d1, d1)*np.dot(d2, d2) ) )

def find_squares(img):
    img = cv.GaussianBlur(img, (5, 5), 0)
    squares = []
    for gray in cv.split(img):
        for thrs in xrange(0, 255, 26):
            if thrs == 0:
                bin = cv.Canny(gray, 0, 50, apertureSize=5)
                bin = cv.dilate(bin, None)
            else:
                _retval, bin = cv.threshold(gray, thrs, 255, cv.THRESH_BINARY)
            bin, contours, _hierarchy = cv.findContours(bin, cv.RETR_LIST, cv.CHAIN_APPROX_SIMPLE)
            for cnt in contours:
                cnt_len = cv.arcLength(cnt, True)
                cnt = cv.approxPolyDP(cnt, 0.02*cnt_len, True)
                if len(cnt) == 4 and cv.contourArea(cnt) > 1000 and cv.isContourConvex(cnt):
                    cnt = cnt.reshape(-1, 2)
                    max_cos = np.max([angle_cos( cnt[i], cnt[(i+1) % 4], cnt[(i+2) % 4] ) for i in xrange(4)])
                    if max_cos < 0.001:
                        squares.append(cnt)
    return squares

def exact_size(img,est_square_len):
    rows,cols,ch = img.shape
    gray = cv.cvtColor(img,cv.COLOR_BGR2GRAY)

    kernel_size = 5
    blur_gray = cv.GaussianBlur(gray,(kernel_size, kernel_size),0)


    low_threshold = 750
    high_threshold = 750
    edges = cv.Canny(blur_gray, low_threshold, high_threshold)
    cv.imshow('edges', edges)
    indices = np.where(edges != [0])
    coordinates = zip(indices[0], indices[1])

    index_array = []
    for x,y in coordinates:
        index_array.append([x,y])
    coordinates2 = zip(indices[0], indices[1])
    distances = []
    est_square_len_upper = int(est_square_len*1.5)
    for x,y in index_array:
        for x2,y2 in index_array:
            if x != x2 and y != y2:
                if (x2 in range(x+5,x+est_square_len_upper) or x2 in range(x-est_square_len_upper,x-5)) and y2 in range(y-2,y+2):
                    #print(x,x2)
                    dist = math.sqrt(pow(y2-y,2)+pow(x2-x,2))
                    distances.append(dist)
    #print(distances)
    est_square_len_mean = statistics.mean(distances)

    square_size = int(round(est_square_len_mean))
    
    print("estimated square size :: "+str(square_size))

    return square_size

if __name__ == '__main__':
    from glob import glob
    for fn in glob('grab3.png'):
        img = cv.imread(fn)
        squares = find_squares(img)
        min_length = 3000
        min_line = None
        line_len = []
        for square in squares:
            x1,y1 = square[0]
            x2,y2 = square[1]
            x3,y3 = square[2]
            x4,y4 = square[3]

            twoto1 = math.sqrt(pow(y2-y1,2)+pow(x2-x1,2))
            threeto1 = math.sqrt(pow(y3-y1,2)+pow(x3-x1,2))
            fourto1 = math.sqrt(pow(y4-y1,2)+pow(x4-x1,2))
            
            line_len.append(twoto1)
            line_len.append(threeto1)
            line_len.append(fourto1)
            if(twoto1 < min_length):
                min_length = twoto1
                min_line = [x1,y1,x2,y2]
                
            if(threeto1 < min_length):
                min_length = threeto1
                min_line = [x1,y1,x3,y3]
            if(fourto1 < min_length):
                min_length = fourto1
                min_line = [x1,y1,x4,y4]
        range_values = min_length*0.5
        #print(min_length)
        smaller_lines = []
        for distance in line_len:
            if min_length + range_values > distance:
                smaller_lines.append(distance)
                #print(distance)
        est_square_len = statistics.mean(smaller_lines)
        #cv.drawContours( img, squares, -1, (0, 255, 0), 3 )
        #cv.line(img,(min_line[0],min_line[1]),(min_line[2],min_line[3]),(255,0,0),5)
        #cv.imshow('squares', img)
        #ch = cv.waitKey()
        #if ch == 27:
            #break
        exact_size(img,est_square_len)
   #cv.destroyAllWindows()
