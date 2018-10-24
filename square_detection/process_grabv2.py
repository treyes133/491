import cv2
import numpy as np
import matplotlib.pyplot as plt
import matplotlib.image as mpimg

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
    cv2.line(floor_img,(x1,y1),(x1,y2),(0,255,0),10)
    cv2.line(floor_img,(x1,y1),(x2,y1),(0,255,0),10)
    cv2.line(floor_img,(x1,y2),(x2,y2),(0,255,0),10)
    cv2.line(floor_img,(x2,y1),(x2,y2),(0,255,0),10)

    #cv2.imshow('Detection zone', floor_img)
    cv2.imwrite('detect.png',floor_img)
    
def angle_cos(p0, p1, p2):
    d1, d2 = (p0-p1).astype('float'), (p2-p1).astype('float')
    return abs( np.dot(d1, d2) / np.sqrt( np.dot(d1, d1)*np.dot(d2, d2) ) )

def find_squares(img):
    img = cv2.GaussianBlur(img, (5, 5), 0)
    squares = []
    for gray in cv2.split(img):
        for thrs in range(0, 255, 26):
            if thrs == 0:
                bin = cv2.Canny(gray, 0, 20, apertureSize=5)
                bin = cv2.dilate(bin, None)
            else:
                _retval, bin = cv2.threshold(gray, thrs, 255, cv2.THRESH_BINARY)
            bin, contours, _hierarchy = cv2.findContours(bin, cv2.RETR_LIST, cv2.CHAIN_APPROX_SIMPLE)
            for cnt in contours:
                cnt_len = cv2.arcLength(cnt, True)
                cnt = cv2.approxPolyDP(cnt, 0.02*cnt_len, True)
                if len(cnt) == 4 and cv2.contourArea(cnt) > 1000 and cv2.isContourConvex(cnt):
                    cnt = cnt.reshape(-1, 2)
                    max_cos = np.max([angle_cos( cnt[i], cnt[(i+1) % 4], cnt[(i+2) % 4] ) for i in range(4)])
                    if max_cos < 0.1:
                        squares.append(cnt)
    print(len(squares))
    cv2.drawContours( img, squares, -1, (0, 255, 0), 3 )
    return img


if __name__ == '__main__':
    img = cv2.imread("test_image.png")

    squares = find_squares(img)
    plt.imshow(squares)
    plt.show()

    #[x,y] = starting_location(input_image)








    
