import cv2,sys
import numpy as np
import matplotlib.pyplot as plt
import matplotlib.image as mpimg
import threading,time,traceback,statistics
class ThreadConverter(threading.Thread):
    array = []
    output = []
    index = -1
    size = 0
    finished = False
    exit_cond = False
    wait_time = 0
    def __init__(self,array,index,size):
        time1 =  time.time()
        threading.Thread.__init__(self)
        self.array = array
        self.index = index
        self.size = size
        time2= time.time()
        #print("init,",str(time2-time1))
        #print(len(self.array),len(self.array[0]))
        
    def run(self):
        rows,cols,ch = self.array.shape
        row_max = int(rows/self.size)*self.size
        col_max = int(cols/self.size)*self.size
        row_matrix = []
        time3 = time.time()
        for y in range(0,col_max,self.size):        
            count = 0
            sum_colors = 0
            t1 = time.time()
            for x2 in range(self.index*self.size,(self.index*self.size)+self.size):
                for y2 in range(y,y+self.size):
                    try:
                        rgb = self.array[x2][y2][0]
                        sum_colors += rgb
                        count += 1
                    except:
                        print("self.array",len(self.array))
                        print(x2)
                        print("BREAK")
                        sys.exit(0)
            t2 = time.time()
            row_matrix.append(float(sum_colors/count))
            #print("Time",str(t2-t1))
        self.output = row_matrix
        self.finished = True
        time4 = time.time()
        #print("run time",str(time4-time3))
        time5 = time.time()            
        while not self.exit_cond:
            #print("DONE")
            time.sleep(0.001)
            #print("thread",self.index,"has been killed")
        time6 = time.time()
<<<<<<< HEAD
        #print("wait time",str(time6-time5))
=======
        self.wait_time = time6-time5
        #print(self.index,"wait time",str(time6-time5))
>>>>>>> 2c2c13f00575bba7e5bbaa88576d2e63c33e2f94
    def status(self):
        return self.finished

    
def ThreadAssign(threading.Thread):
    concurrent_threads = 0
    exit_cond = False
    img = []
    localization_size = 0
    finished_matrix = []
    def __init__(self,concurrent_threads,img,localization_size):
        threading.Thread.__init__(self)
        self.concurrent_threads = concurrent_threads
        self.img = img
        self.localization_size = localization_size
        self.current_threads = [None]*self.concurrent_threads
    def run(self):
        while not exit_cond:
            for t in range(0,len(self.current_threads)):
                found = False
                for x in range(xmin,len(self.finished_matrix)):
                    #print("running")
                    if found:
                        #print("breaking")
                        break
                    if finished_matrix[x] is False:
                        send_array = []
                        print("X",x)
                        #print(current_threads)
                        #print("new value added")
                        thread = ThreadConverter(self.img,x,self.localization_size)
                        current_threads[t] = thread
                        current_threads[t].start()
                        found = True
                        xmin += 1
    def update(self, fM, cT):
        self.finished_matrix = fM
        self.current_threads = cT

def get_array2(img,localization_size):

    col_max = int(len(img[0])/localization_size)*localization_size
    row_max = int(len(img)/localization_size)*localization_size
<<<<<<< HEAD
    #print("col_max",col_max)
    #print("len(img[0])",len(img[0]))
    #print("len(img)",len(img))
    #print("localization_size",localization_size)
=======
    print("localization_size",localization_size)
>>>>>>> 2c2c13f00575bba7e5bbaa88576d2e63c33e2f94
    concurrent_threads = 5
    print("concurrent_threads",concurrent_threads)
    thread_rows = 1

    total_threads = int(len(img)/(thread_rows*localization_size))
    #print(total_threads,"total_threads")

    #final_array = []*total_threads
    final_array = []

    xmin = 0

    finished_matrix = [False]*total_threads

    tA = ThreadAssign(concurrent_threads,img,localization_size)
    tA.start()
    
    wt = []
    while not all(finished_matrix):
        #print(finished_matrix)
        for t in range(0,len(current_threads)):
            tA.update(finished_matrix,current_threads)
            #print("checking for fininshed thread")
            if current_threads[t] is not None:
                if current_threads[t].status() is True:
                    final_array.insert(current_threads[t].index,current_threads[t].output)
                    current_threads[t].exit_cond = True
                    finished_matrix[current_threads[t].index] = True
                    wt.append(current_threads[t].wait_time)
                    del current_threads[t]
                    current_threads.append(None)
<<<<<<< HEAD
                    #sys.exit(0)
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
                        #print("X",x)
                        #print(current_threads)
                        #print("new value added")
                        thread = ThreadConverter(img,x,localization_size)
                        current_threads[t] = thread
                        current_threads[t].start()
                        found = True
                        xmin += 1
=======
                
    for w in wt:
        print(w)
>>>>>>> 2c2c13f00575bba7e5bbaa88576d2e63c33e2f94
                        
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
            t1 = time.time()
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
            t2 = time.time()
            #print("Time1",str(t2-t1))
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
            for xg in range(len(grab_matrix)-1,-1,-1):
                if sum(score) > min_score:
                    break
                floor_match_row = []
                for yg in range(0,len(grab_matrix[0]),1):
                    #print("x+xg",x+xg)
                    #print("yg",yg)

                    #this could use some tweaking
                    distance_factor = 1/(yg+1)
                    try:
                        floor_match_row.append(floor_matrix[x+xg][y+yg])
                        value = abs(floor_matrix[x+xg][y+yg]-grab_matrix[xg][yg])*distance_factor
                    except:
                        traceback.print_exc()
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
    floor_matrix = get_array(floor,mismatch)
    time2 = time.time()

    print("Total time for first ::",str(time2-time1))

    #print(test_matrix)

    time1_diff = []
    time2_diff = []

    for x in range(0,100):

        time_start = time.time()

        test_matrix = get_array2(img2,size_grab)


        time_stop = time.time()

        time1_diff.append(time_stop-time_start)

        time3 = time.time()
        min_score, min_start_coordinate = find_match(test_matrix,floor_matrix)
        time4 = time.time()
        time2_diff.append(time4-time3)
    print(statistics.mean(time1_diff))
    print(statistics.mean(time2_diff))
  #  outline_region(min_start_coordinate,test_matrix,floor,mismatch)

    #plt.figure(0)

    #plt.subplot(221),plt.imshow(img)
    #plt.subplot(222),plt.imshow(img2)
    #plt.subplot(223),plt.imshow(img2)
    #plt.subplot(144),plt.imshow(floor)
    #plt.tight_layout()
    #plt.show()


    #[x,y] = starting_location(input_image)








    