import cv2,sys
import numpy as np
import matplotlib.pyplot as plt
import matplotlib.image as mpimg

def get_array(img,localization_size):
    rows,cols,ch = img.shape
    info_matrix = []

    row_max = int(rows/localization_size)*localization_size
    col_max = int(cols/localization_size)*localization_size
    for x in range(0,row_max,localization_size):
        row_matrix = []
        for y in range(0,col_max,localization_size):
            count = 0
            sum_colors = 0
            for x2 in range(x,x+localization_size):
                if(localization_size != 50):
                    #print("x range:",x,"",x+localization_size)
                    pass
                for y2 in range(y,y+localization_size):
                    if(localization_size != 50):
                        #print("y range:",y,"",y+localization_size)
                        pass
                    #print("X2:",x2,"Y2:",y2)
                    rgb = img[x2][y2][0]
                    sum_colors += rgb
                    count += 1
            row_matrix.append(float(sum_colors/count))
            #row_matrix.append(rgb[1])
            #print(row_matrix)
        info_matrix.append(row_matrix)
    #print("\n\n")
    #print(info_matrix)    
    return info_matrix

def find_match(grab_matrix, floor_matrix):
    print("FIND MATCH")
    print("----------")
    scores = []
    #print(len(grab_matrix[0]))
    #print(len(grab_matrix))
    min_score = 10000000
    min_score_card = None
    min_start_coordinate = [0,0]
    min_floor = []
    for x in range(0,len(floor_matrix)-len(grab_matrix)):
        for y in range(0,len(floor_matrix[0])-len(grab_matrix[0])):
            score = []
            floor_match = []
            for xg in range(0,len(grab_matrix)):
                floor_match_row = []
                for yg in range(0,len(grab_matrix[0])):
                    #print("x+xg",x+xg)
                    #print("y+yg",y+yg)

                    #this could use some tweaking
                    distance_factor = 1
                    try:
                        floor_match_row.append(floor_matrix[x+xg][y+yg])
                        value = abs(floor_matrix[x+xg][y+yg]-grab_matrix[xg][yg])*distance_factor
                    except:
                        print("x",str(x))
                        print("xg",str(xg))
                        print("x+xg",str(x+xg))
                        print("Y",str(y))
                        print("yg",str(yg))
                        print("Y+yg",str(y+yg))
                        sys.exit(1)
                        
                    
                    #print("value",value)
                    score.append(value)
                floor_match.append(floor_match_row)
            if sum(score) < min_score:
                        min_floor = floor_match
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
    print("Matrix match")
    print(min_floor)

    return min_score, min_start_coordinate

def outline_region(min_location,matrix_values,floor_img,square_size):

    x1 = min_location[0]*square_size
    y1 = min_location[1]*square_size
    print("x1",x1)
    print("y1",y1)
    x2 = x1+len(matrix_values[0])*square_size+square_size
    y2 = y1+len(matrix_values)*square_size+square_size
    print("x2",x2)
    print("y2",y2)
    
    cv2.line(floor_img,(x1,y1),(x1,y2),(0,255,0),20)
    cv2.line(floor_img,(x1,y1),(x2,y1),(0,255,0),20)
    cv2.line(floor_img,(x1,y2),(x2,y2),(0,255,0),20)
    cv2.line(floor_img,(x2,y1),(x2,y2),(0,255,0),20)

    #cv2.imshow('Detection zone', floor_img)
    #cv2.imwrite('detect.png',floor_img)
    return floor_img


if __name__ == '__main__':
    img = cv2.imread("grab.png")
    img2 = cv2.imread("test_image.png")
    floor = cv2.imread("floor150.png")

    size_grab = 10

    

    mismatch = int(150*(float(size_grab/40)))

    test_matrix = get_array(img,size_grab)

    #print(test_matrix)

    #floor_matrix = get_array(floor,mismatch)

    #print(floor_matrix)


    #min_score, min_start_coordinate = find_match(test_matrix,floor_matrix)

  #  outline_region(min_start_coordinate,test_matrix,floor,mismatch)

    plt.figure(0)

    plt.subplot(221),plt.imshow(img)
    #plt.subplot(222),plt.imshow(img2)
    plt.subplot(223),plt.imshow(img2)
    plt.subplot(144),plt.imshow(floor)
    plt.tight_layout()
    plt.show()


    #[x,y] = starting_location(input_image)








    
