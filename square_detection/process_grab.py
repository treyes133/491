import sys,math,statistics,time
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
    #cv.imshow('gray', gray)

    kernel_size = 5
    blur_gray = cv.GaussianBlur(gray,(kernel_size, kernel_size),0)

    starting_point = None


    #low_threshold = 100
    #high_threshold = 150
    last = 0
    for x in range(100,750,3):
        
        low_threshold = x
        high_threshold = x+50
        edges = cv.Canny(blur_gray, low_threshold, high_threshold)
        
        indices = np.where(edges != [0])
        coordinates = zip(indices[0], indices[1])
        index_array = []
        for x,y in coordinates:
            index_array.append([x,y])
        
        if last != 0 and len(index_array) == 0:
            low_threshold = x-3
            high_threshold = x+50-3
            edges = cv.Canny(blur_gray, low_threshold, high_threshold)
            
            indices = np.where(edges != [0])
            coordinates = zip(indices[0], indices[1])
            for x,y in coordinates:
                index_array.append([x,y])
            break
        last = len(index_array)
    #cv.imshow('edges', edges)
    #print("L",low_threshold," H",high_threshold,"len index array",len(index_array))

    
    distances = []
    ignore_range = int(est_square_len*0.5)
    est_square_len_upper = int(est_square_len*1.5)
    variance = ignore_range
    for x,y in index_array:
        if starting_point is None:
            starting_point = x,y
            print("running line algorithm")
        for x2,y2 in index_array:
            if x2 not in range (x-ignore_range,x+ignore_range): 
                if (x2 in range(x+ignore_range,x+est_square_len_upper) or x2 in range(x-est_square_len_upper,x-ignore_range)) and y2 in range(y-variance,y+variance):
                    #print(x,x2)
                    dist = math.sqrt(pow(y2-y,2)+pow(x2-x,2))
                    distances.append(dist)
            if y2 not in range(y-ignore_range,y+ignore_range):
                if (y2 in range(y+ignore_range,y+est_square_len_upper) or y2 in range(y-est_square_len_upper,y-ignore_range)) and x2 in range(x-variance,x+variance):
                    #print(x,x2)
                    dist = math.sqrt(pow(y2-y,2)+pow(x2-x,2))
                    distances.append(dist)
    #print(distances)
    est_square_len_mean = statistics.mean(distances)

    square_size = int(round(est_square_len_mean))
    
    #print("estimated square size :: "+str(square_size))

    return square_size,starting_point

def get_array(img,square_size,starting_point):
    rows,cols,ch = img.shape
    #print(cols)
    start_point = [starting_point[0],starting_point[1]]
    #print(start_point)
    allowed_range = 4
    if start_point[0] != 0 and start_point[1] != 0:
        num_squares_to_start_x = math.floor(start_point[0]/square_size)
        first_square_x = start_point[0]-(num_squares_to_start_x*square_size)

        if first_square_x in range(square_size-allowed_range,square_size+allowed_range):
            first_square_x = 0

        num_squares_to_start_y = math.floor(start_point[1]/square_size)
        first_square_y = start_point[1]-(num_squares_to_start_y*square_size)

        if first_square_y in range(square_size-allowed_range,square_size+allowed_range):
            first_square_y = 0

        print(num_squares_to_start_y)
        print(cols)
        #rows - L overhang
        last_square_x = math.floor((rows-first_square_x)/square_size)*square_size
        last_square_y = math.floor((cols-first_square_y)/square_size)*square_size
        print(last_square_y)
    else:
        first_square_x = start_point[0]
        first_square_y = start_point[1]
        last_square_x = rows-square_size
        last_square_y = cols-square_size

    square_1_coord = [first_square_x,first_square_y]

    
    info_matrix = []
    for x in range(first_square_x,last_square_x,square_size):
        row_matrix = []
        for y in range(first_square_y,last_square_y,square_size):
            center_x = math.floor(square_size/2)+x
            center_y = math.floor(square_size/2)+y
            rgb = img[center_x][center_y]
            #print(rgb, center_x,center_y)
            if(rgb[1] == 255):
                row_matrix.append(1)
            else:
                row_matrix.append(0)
            #row_matrix.append(rgb[1])
        #print(row_matrix)
        info_matrix.append(row_matrix)
    #print("\n\n")
    #print(info_matrix)    
    return info_matrix

def find_match(grab_matrix, floor_matrix, square_size):
    print("FIND MATCH")
    print("----------")
    scores = []
    #print(len(grab_matrix[0]))
    #print(len(grab_matrix))
    min_score = 10000000
    min_score_card = None
    min_start_coordinate = [0,0]
    for x in range(0,len(floor_matrix)-len(grab_matrix)):
        for y in range(0,len(floor_matrix[0])-len(grab_matrix[0])):
            score = []
            for xg in range(0,len(grab_matrix)):
                for yg in range(0,len(grab_matrix[0])):
                    #print("x+xg",x+xg)
                    #print("y+yg",y+yg)

                    #this could use some tweaking
                    distance_factor = 1+(1/(yg/10+1))
                    value = abs(floor_matrix[x+xg][y+yg]-grab_matrix[xg][yg])*distance_factor
                    
                    #print("value",value)
                    score.append(value)
            if sum(score) < min_score:
                        min_score = sum(score)
                        min_score_card = score
                        min_start_coordinate = [y,x]
            #print(score)
            #print(sum(score))
    print("min score :: ",min_score)
    print("min coordinate :: ",min_start_coordinate)
    print("Matrix card ")
    print("-----------")
    print(min_score_card)

    return min_score, min_start_coordinate

def outline_region(min_location,matrix_values,floor_img,square_size):

    x1 = min_location[0]*square_size
    y1 = min_location[1]*square_size
    print("x1",x1)
    print("y1",y1)
    x2 = x1+len(matrix_values[0])*square_size+square_size
    y2 = y1+len(matrix_values)*square_size+square_size
    cv.line(floor_img,(x1,y1),(x1,y2),(0,255,0),10)
    cv.line(floor_img,(x1,y1),(x2,y1),(0,255,0),10)
    cv.line(floor_img,(x1,y2),(x2,y2),(0,255,0),10)
    cv.line(floor_img,(x2,y1),(x2,y2),(0,255,0),10)

    #cv.imshow('Detection zone', floor_img)
    cv.imwrite('detect.png',floor_img)



if __name__ == '__main__':
    from glob import glob
    for fn in glob('grab.png'):
        time1 = time.time()
        img = cv.imread(fn)
        #level = 70
        #blur = cv.blur(img,(level,math.floor(level/10)))
        #cv.imshow('blur', blur)
        #cv.imwrite('blur'+str(level)+'.png',blur)
        #sys.exit(1)
        #img = blur
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
        smaller_lines = 0
        count = 0
        for distance in line_len:
            if min_length + range_values > distance:
                smaller_lines += distance
                count += 1
        print(str(smaller_lines/count))
        percentile = 0.5
        line_size = percentile*(max(line_len)-min(line_len))+statistics.mean(line_len)
        print("line_size",line_size)
        
        est_square_len = smaller_lines/count

        #est_square_len = int(line_size)

        time2 = time.time()
        print("Time to find squares ::",str(time2-time1))
        #cv.drawContours( img, squares, -1, (0, 255, 0), 3 )
        #cv.line(img,(min_line[0],min_line[1]),(min_line[2],min_line[3]),(255,0,0),5)
        #cv.imshow('squares', img)
        #ch = cv.waitKey()
        #if ch == 27:
            #break
        try:
            square_size,starting_point = exact_size(img,est_square_len)
        except:
            square_size = est_square_len
            starting_point = [0,0]
        time3 = time.time()
        print("Time to find square length ::",str(time3-time2))
        print("SS: ",square_size)

        matrix_values = get_array(img,square_size,starting_point)

        time4 = time.time()
        print("Time to get grab matrix values ::",str(time4-time3))

        floor_img = cv.imread("floor35.png")


        floor_matrix = get_array(floor_img,square_size,[0,0])
        time5 = time.time()
        print("Time to get floor matrix values ::",str(time5-time4))
        min_score, min_location = find_match(matrix_values, floor_matrix, square_size)
        time6 = time.time()        
        print("Time to find match ::",str(time6-time5))

        outline_region(min_location,matrix_values,floor_img,square_size)

        

   #cv.destroyAllWindows()
