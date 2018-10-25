from mpl_toolkits.mplot3d import Axes3D
import numpy as np
import matplotlib
matplotlib.use("agg")
import matplotlib.pyplot as plt
import matplotlib.image as mpimg
import cv2,math,time,sys
import gc


time1 = time.time()
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
    #print("FIND MATCH")
    #print("----------")
    scores = []
    #print(len(grab_matrix[0]))
    #print(len(grab_matrix))
    min_score = 255*len(grab_matrix)*len(grab_matrix[0])
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
                    if yg <= int(len(grab_matrix[0])/5):
                        distance_factor = 0.1+(pow(yg,2)/len(grab_matrix[0]))
                        #print("YG",yg," DF",distance_factor)
                    else:
                        distance_factor = 1
                    
                    floor_match_row.append(floor_matrix[x+xg][y+yg])
                    value = abs(floor_matrix[x+xg][y+yg]-grab_matrix[xg][yg])*distance_factor
                        
                    score.append(value)
                floor_match.append(floor_match_row)
            if sum(score) < min_score:
                        min_floor = floor_match
                        min_score = sum(score)
                        min_score_card = score
                        min_start_coordinate = [y,x]
            #print(score)
            #print(sum(score))
    #print("min score :: ",min_score)
    #print("min coordinate :: ",min_start_coordinate)
    #print("Matrix card ")
    #print("-----------")
    #print(min_score_card)
    #print("Matrix match")
    #print(min_floor)

    return min_score, min_start_coordinate

def outline_region(min_location,matrix_values,floor_img,square_size):

    x1 = min_location[0]*square_size
    y1 = min_location[1]*square_size
    #print("x1",x1)
    #print("y1",y1)
    x2 = x1+len(matrix_values[0])*square_size+square_size
    y2 = y1+len(matrix_values)*square_size+square_size
    #print("x2",x2)
    #print("y2",y2)

    cv2.rectangle(floor_img,(x1,y1),(x2,y2),(255,0,0),50)

    return floor_img

time_start = time.time()
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
grab_size = 200

noise = True

square_size = 150

plt.ioff()
step_counter = 0
size_grab = 40
mismatch = int(150*(float(size_grab/40)))
floor_time = time.time()
floor_img = cv2.imread("floor150.png")
floor_matrix = get_array(floor_img,mismatch)
floor_time_end = time.time()

for y in range(0,rows,step):
    print(str(step_counter))
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
    pts_dst = np.float32([[0,0],[grab_size,0],[0,grab_size],[grab_size,grab_size]])

    h, status = cv2.findHomography(pts_src, pts_dst)
    im_out = cv2.warpPerspective(img, h, (grab_size,grab_size))
    if noise:
        gaussian_noise = im_out.copy()
        rows2,cols2,chan2 = im_out.shape
        mu = 10
        sigma = 5

        for x in range(0,cols2):
            for y in range(0,rows2):
                noise = (sigma*np.random.randn()) + mu
                if im_out[x][y][0] == 255:
                    gaussian_noise[x][y] = im_out[x][y] - noise
                else:
                    gaussian_noise[x][y] = im_out[x][y] + noise
        out = gaussian_noise
    else:
        out = im_out

    rows3,cols3,chan3 = out.shape
    pts1 = np.float32([[int(0.3*cols3),int(0.02*rows3)],[int(0.68*cols3),int(0.02*rows3)],[int(0.1*rows3),rows3],[int(0.85*cols3),rows3]])
    pts2 = np.float32([[0,0],[200,0],[0,600],[200,600]])

    M = cv2.getPerspectiveTransform(pts1,pts2)

    corrected = cv2.warpPerspective(out,M,(200,600))

    est_square_len = 150

    time2 = time.time()
    #print("Time to find squares ::",str(time2-time1))
    #cv2.drawContours( img, squares, -1, (0, 255, 0), 3 )
    #cv2.line(img,(min_line[0],min_line[1]),(min_line[2],min_line[3]),(255,0,0),5)
    #cv2.imshow('squares', img)
    #ch = cv2.waitKey()
    #if ch == 27:
        #break
    square_size = 150
    time3 = time.time()
    #print("Time to find square length ::",str(time3-time2))
    #print("SS: ",square_size)

    #matrix_values = get_array(img,square_size,starting_point)

    time4 = time.time()
    #print("Time to get grab matrix values ::",str(time4-time3))



    test_matrix = get_array(corrected,size_grab)

    min_score, min_start_coordinate = find_match(test_matrix,floor_matrix)

    final_image = outline_region(min_start_coordinate,test_matrix,floor_img.copy(),mismatch)


    #floor_matrix = get_array(floor_img,square_size,[0,0])
    time5 = time.time()
    #print("Time to get floor matrix values ::",str(time5-time4))
    #min_score, min_location = find_match(matrix_values, floor_matrix, square_size)
    time6 = time.time()      
    #print("Time to find match ::",str(time6-time5))

    #done = outline_region(min_location,matrix_values,floor_img,square_size)
    fig = plt.figure()
    plt.subplot(221),plt.imshow(im_out),plt.title("Input")
    #plt.subplot(222),plt.imshow(out),plt.title("Gaussian additive noise")
    plt.subplot(223),plt.imshow(corrected),plt.title("Correction with noise")
    plt.subplot(144),plt.imshow(final_image),plt.title("Location"),plt.xlabel(str(min_score))
    plt.savefig("run_final/"+str(step_counter)+".png")
    plt.close(fig)
    del im_out, out, corrected, fig, final_image
    step_counter += 1
    gc.collect()
    print("\n")

    

time_stop = time.time()
time_diff = time_stop-time_start
print("Total time ::",time_diff)
print("Grab size ::",grab_size)
print("Completed.")
