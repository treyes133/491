import cv2,sys
import numpy as np
import matplotlib.pyplot as plt
import matplotlib.image as mpimg
import threading,time
class ThreadConverter(threading.Thread):
    array = []
    output = []
    index = -1
    size = 0
    finished = False
    exit_cond = False
    def __init__(self,array,index,size):
        threading.Thread.__init__(self)
        self.array = array
        self.index = index
        self.size = size
        #print(len(self.array),len(self.array[0]))
        
    def run(self):
        for x in range(0,len(self.array),self.size):
            row_matrix = []
            for y in range(0,len(self.array[0]),self.size):
                
                count = 0
                sum_colors = 0
                for x2 in range(x,x+self.size):
                    for y2 in range(y,y+self.size):
                        try:
                            rgb = self.array[x2][y2]
                            sum_colors += rgb
                            count += 1
                        except:
                            print("self.array",len(self.array))
                            print(x)
                            print(x2)
                            print("BREAK")
                            sys.exit(0)
                row_matrix.append(float(sum_colors/count))
            self.output.append(row_matrix)
        self.finished = True
        while not self.exit_cond:
            #print("DONE")
            time.sleep(0.001)
        #print("thread",self.index,"has been killed")
    def status(self):
        return self.finished
        

def get_array2(img,localization_size):

    col_max = int(len(img[0])/localization_size)*localization_size
    row_max = int(len(img)/localization_size)*localization_size
    print("col_max",col_max)
    print("len(img[0])",len(img[0]))
    print("len(img)",len(img))
    print("localization_size",localization_size)
    concurrent_threads = 5

    thread_rows = 1

    total_threads = int(len(img)/(thread_rows*localization_size))
    print(total_threads,"total_threads")

    #final_array = []*total_threads
    final_array = []

    xmin = 0

    finished_matrix = [False]*total_threads
    current_threads = [None]*concurrent_threads
    while not all(finished_matrix):
        #print(finished_matrix)
        for x in range(0,len(current_threads)):
            #print("checking for fininshed thread")
            if current_threads[x] is not None:
                if current_threads[x].status() is True:
                    for row in range(0,thread_rows):
                        final_array.insert(current_threads[x].index+row,current_threads[x].output[row])
                    #print(final_array)
                    current_threads[x].exit_cond = True
                    finished_matrix[current_threads[x].index] = True
                    current_threads[x] = None
        for t in range(0,len(current_threads)):
            if current_threads[t] is None:
                found = False
                for x in range(xmin,len(finished_matrix)):
                    #print("running")
                    if found:
                        #print("breaking")
                        break
                    if finished_matrix[x] is False:
                        send_array = []
                        for x2 in range(x*localization_size*thread_rows,x*thread_rows*localization_size+localization_size*thread_rows):
                            row_array = []
                            for y2 in range(0,col_max):
                                row_array.append(img[x2][y2][0])
                            send_array.append(row_array)
                        #print("len(send_array)",len(send_array))
                        #print("len(send_array[0])",len(send_array[0]))
                        print("X",x)
                        #print(current_threads)
                        #print("new value added")
                        thread = ThreadConverter(send_array,x,localization_size)
                        current_threads[t] = thread
                        current_threads[t].start()
                        found = True
                        xmin += 1
                    
    print(finished_matrix)
    return final_array
                
                
                        
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

    size_grab = 40

    

    mismatch = int(150*(float(size_grab/40)))

    time1 = time.time()
    test_matrix = get_array(img2,40)
    time2 = time.time()

    print("Total time for first ::",str(time2-time1))

    #print(test_matrix)

    time_start = time.time()

    floor_matrix = get_array2(img2,40)

    print(floor_matrix == test_matrix)

    time_stop = time.time()

    print("Total time for second ::",str(time_stop-time_start))

    for x in range(0,len(test_matrix)):
        for y in range(0,len(test_matrix[0])):
            print("1 ",floor_matrix[x][y],":",test_matrix[x][y])

    #print(floor_matrix)

    #plt.imshow(floor_matrix)
    #plt.show()

    #min_score, min_start_coordinate = find_match(test_matrix,floor_matrix)

  #  outline_region(min_start_coordinate,test_matrix,floor,mismatch)

    #plt.figure(0)

    #plt.subplot(221),plt.imshow(img)
    #plt.subplot(222),plt.imshow(img2)
    #plt.subplot(223),plt.imshow(img2)
    #plt.subplot(144),plt.imshow(floor)
    #plt.tight_layout()
    #plt.show()


    #[x,y] = starting_location(input_image)








    
