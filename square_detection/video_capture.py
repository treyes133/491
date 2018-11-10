import cv2,threading,time,traceback,sys
import numpy as np
import multiprocessing


class ThreadImage(threading.Thread):
    current_grab = None
    stop = False
    cap = None
    def __init__(self):
        threading.Thread.__init__(self)
        self.cap  = cv2.VideoCapture(0)
        print("Thread setup")
    def run(self):
        print("Thread running")
        while not self.stop:
            ret, frame = self.cap.read()
            gray = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)
            self.current_grab = gray
        print("Thread exiting...")
    def stop_command(self):
        self.stop = True
    def grab_frame(self):
        return self.current_grab

class ThreadConverter(threading.Thread):
    array = []
    output = []
    index = -1
    size = 0
    finished = False
    exit_cond = False
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
        rows,cols = self.array.shape
        row_max = int(rows/self.size)*self.size
        col_max = int(cols/self.size)*self.size
        row_matrix = []
        time3 = time.time()
        skip = 2
        for y in range(0,col_max,self.size):        
            count = 0
            sum_colors = 0
            for x2 in range(self.index*self.size,(self.index*self.size)+self.size,skip):
                for y2 in range(y,y+self.size,skip):
                    try:
                        rgb = self.array[x2][y2]
                        sum_colors += rgb
                        count += 1
                    except:
                        #print("self.array",len(self.array))
                        print(x2)
                        #print("BREAK")
                        #sys.exit(0)
            row_matrix.append(float(sum_colors/count))
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
        #print("wait time",str(time6-time5))
    def status(self):
        return self.finished
        

def get_array2(img,localization_size):

    col_max = int(len(img[0])/localization_size)*localization_size
    row_max = int(len(img)/localization_size)*localization_size
    #print("col_max",col_max)
    #print("len(img[0])",len(img[0]))
    #print("len(img)",len(img))
    #print("localization_size",localization_size)
    concurrent_threads = 5

    thread_rows = 1

    total_threads = int(len(img)/(thread_rows*localization_size))
    #print(total_threads,"total_threads")

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
                    
                    final_array.insert(current_threads[x].index,current_threads[x].output)
                    current_threads[x].exit_cond = True
                    finished_matrix[current_threads[x].index] = True
                    del current_threads[x]
                    current_threads.append(None)
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
    return final_array

def matcher(receive):
    index = receive[0]
    floor_matrix = receive[1]
    grab_matrix = receive[2]
    #print("index :: ",index)
    time1 = time.time()
    exit_cond = False
    min_score = 100000000
    min_score_card = None
    min_start_coordinate = [0,0]
    min_floor = []
    check_count = 0
    skip = 1
    finished = False
    for y in range(0,len(floor_matrix[0])-len(grab_matrix[0])):
        score = []
        floor_match = []
        run = 0
        exit_cond = False
        for xg in range(len(grab_matrix)-1,-1,-1*skip):                
            floor_match_row = []
            for yg in range(0,len(grab_matrix[0]),skip):
                #print("x+xg",x+xg)
                #print("yg",yg)
                #this could use some tweaking
                distance_factor = 1/(yg+1)
                try:
                    #check_count += 1
                    floor_match_row.append(floor_matrix[index+xg][y+yg])
                    value = abs(floor_matrix[index+xg][y+yg]-grab_matrix[xg][yg])*distance_factor
                except:
                    traceback.print_exc()

                #print("value",value)
                score.append(value)
            if min_score_card != None:
                if score[run] > min_score_card[run] or sum(score) > min_score:
                    exit_cond = True
                    break
            run += 1
            floor_match.append(floor_match_row)
        if sum(score) < min_score and not exit_cond:
            min_floor = floor_match
            min_score = sum(score)
            min_score_card = score
            min_start_coordinate = [y,index]
    time2 = time.time()
    exc_time = time2-time1
    #print("exc_time",exc_time)

    return [min_floor,min_score,min_score_card,min_start_coordinate]
    

def find_match3(grab_matrix, floor_matrix, pool):
    #print("FIND MATCH")
    #print("----------")
    scores = []
    #print(len(grab_matrix[0]))
    #print(len(grab_matrix))
    min_score = 255*len(grab_matrix)*len(grab_matrix[0])
    min_score_card = None
    min_start_coordinate = [0,0]
    min_floor = []
    check_count = 0
    skip = 1
    indexes = range(0,len(floor_matrix)-len(grab_matrix))
    #print("Check2")
    
    #print("Check3")
    #print(indexes)
    send = []
    for x in indexes:
        send.append([x,floor_matrix,grab_matrix])
    results = pool.map(matcher,send)
    #print(results)
    #pool.close() 
    #pool.join()
    #print("Check5")
    time2 = time.time()
    fork_time = time2-time1
    #print("fork_time",fork_time)
    for result in results:
        if result[1] < min_score:
            min_floor = result[0]
            min_score = result[1]
            min_score_card = result[2]
            min_start_coordinate = result[3]
    

    #print("all(fin)",all(fin))
        
        
                
        
    #print("check_count",check_count)
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
class ThreadMatch(threading.Thread):
    floor_matrix = None
    grab_matrix = None
    index = -1
    exit_cond = False
    min_score = 100000000
    min_score_card = None
    min_start_coordinate = [0,0]
    min_floor = []
    check_count = 0
    skip = 1
    finished = False
    def __init__(self,floormatrix,grabmatrix,index,skip):
        threading.Thread.__init__(self)
        self.floor_matrix = floormatrix
        self.grab_matrix = grabmatrix
        self.index = index
        self.min_score = 255*len(self.grab_matrix)*len(self.grab_matrix[0])
        self.skip = skip
    def run(self):
            time1 = time.time()
            for y in range(0,len(self.floor_matrix[0])-len(self.grab_matrix[0])):
                score = []
                floor_match = []
                run = 0
                exit_cond = False
                for xg in range(len(self.grab_matrix)-1,-1,-1*self.skip):                
                    floor_match_row = []
                    for yg in range(0,len(self.grab_matrix[0]),self.skip):
                        #print("x+xg",x+xg)
                        #print("yg",yg)
                        #this could use some tweaking
                        distance_factor = 1/(yg+1)
                        try:
                            #check_count += 1
                            floor_match_row.append(self.floor_matrix[self.index+xg][y+yg])
                            value = abs(self.floor_matrix[self.index+xg][y+yg]-self.grab_matrix[xg][yg])*distance_factor
                        except:
                            traceback.print_exc()

                    
                    
                        #print("value",value)
                        score.append(value)
                    if self.min_score_card != None:
                        if score[run] > self.min_score_card[run] or sum(score) > self.min_score:
                            exit_cond = True
                            break
                    run += 1
                    floor_match.append(floor_match_row)
                if sum(score) < self.min_score and not exit_cond:
                    self.min_floor = floor_match
                    self.min_score = sum(score)
                    self.min_score_card = score
                    self.min_start_coordinate = [y,self.index]
            self.finished = True
            time2 = time.time()
            exc_time = time2-time1
            #print("exc_time",exc_time)
    def finish(self):
        if self.finished:
            return [self.min_floor,self.min_score,self.min_score_card,self.min_start_coordinate]
        else:
            return None

def find_match2(grab_matrix, floor_matrix):
    #print("FIND MATCH")
    #print("----------")
    scores = []
    #print(len(grab_matrix[0]))
    #print(len(grab_matrix))
    min_score = 255*len(grab_matrix)*len(grab_matrix[0])
    min_score_card = None
    min_start_coordinate = [0,0]
    min_floor = []
    check_count = 0
    skip = 1
    threads = []
    fin = [False]*(len(floor_matrix)-len(grab_matrix))
    print("len(fin)",len(fin))
    time1 = time.time()
    for x in range(0,len(floor_matrix)-len(grab_matrix)):
        time7 = time.time()
        tm = ThreadMatch(floor_matrix,grab_matrix,x,skip)
        tm.start()
        time8 = time.time()
        physical_fork_time = time8-time7
        #print("physical_fork_time",physical_fork_time)
        threads.append(tm)
    pool.close() 
    pool.join()
    time2 = time.time()
    fork_time = time2-time1
    print("fork_time",fork_time)
    time3 = time.time()
    for x in range(0,len(threads)):
        thread = threads[x]
        returned = thread.finish()
        if returned is not None:
            if returned[1] < min_score:
                min_floor = returned[0]
                min_score = returned[1]
                min_score_card = returned[2]
                min_start_coordinate = returned[3]
            fin[x] = True
    time4 = time.time()
    read_time = time4-time3
    #print("read_time",read_time)
    #print("all(fin)",all(fin))
        
        
                
        
    #print("check_count",check_count)
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
    check_count = 0
    skip = 1
    for x in range(0,len(floor_matrix)-len(grab_matrix)):
        for y in range(0,len(floor_matrix[0])-len(grab_matrix[0])):
            score = []
            floor_match = []
            run = 0
            exit_cond = False
            for xg in range(len(grab_matrix)-1,-1,-1*skip):                
                floor_match_row = []
                for yg in range(0,len(grab_matrix[0]),skip):
                    #print("x+xg",x+xg)
                    #print("yg",yg)
                    #this could use some tweaking
                    distance_factor = 1/(yg+1)
                    try:
                        check_count += 1
                        floor_match_row.append(floor_matrix[x+xg][y+yg])
                        value = abs(floor_matrix[x+xg][y+yg]-grab_matrix[xg][yg])*distance_factor
                    except:
                        traceback.print_exc()

                    
                    
                    #print("value",value)
                    score.append(value)
                if min_score_card != None:
                    if score[run] > min_score_card[run] or sum(score) > min_score:
                        exit_cond = True
                        break
                run += 1
                floor_match.append(floor_match_row)
            if sum(score) < min_score and not exit_cond:
                min_floor = floor_match
                min_score = sum(score)
                min_score_card = score
                min_start_coordinate = [y,x]
    #print("check_count",check_count)
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
    time1 = time.time()
    x1 = min_location[0]*square_size
    y1 = min_location[1]*square_size
    print("x1",x1)
    print("y1",y1)
    x2 = x1+len(matrix_values[0])*square_size+square_size
    y2 = y1+len(matrix_values)*square_size+square_size
    print("x2",x2)
    print("y2",y2)
    
    cv2.line(floor_img,(x1,y1),(x1,y2),(0,255,0),5)
    cv2.line(floor_img,(x1,y1),(x2,y1),(0,255,0),5)
    cv2.line(floor_img,(x1,y2),(x2,y2),(0,255,0),5)
    cv2.line(floor_img,(x2,y1),(x2,y2),(0,255,0),5)

    #cv2.imshow('Detection zone', floor_img)
    #cv2.imwrite('detect.png',floor_img)
    time2 = time.time()
    exc_time = time2-time1
    #print("Exc time",exc_time)
    return floor_img


class ThreadCopy(threading.Thread):
    import numpy as np
    image = None
    output = None
    copy_image = True
    def __init__(self,image):
        threading.Thread.__init__(self)
        self.image = image
        self.output = np.copy(self.image)
    def run(self):
        while True:
            if self.copy_image:
                self.output = np.copy(self.image)
                self.copy_image = False
            time.sleep(0.0001)
    def get_copy(self):
        return self.output
    def request_copy(self):
        self.copy_image = True


if __name__ == "__main__":
    pool = multiprocessing.Pool(6)
    grab_matrix = None
    floor = cv2.imread("floor150.png",cv2.IMREAD_GRAYSCALE)
    floor_rgb = cv2.cvtColor(floor,cv2.COLOR_GRAY2RGB)
    imS = cv2.resize(floor_rgb, (141,600))
    tcopy = ThreadCopy(imS)
    tcopy.start()
    ti = ThreadImage()
    ti.start()
    check = False
    rows = 0 
    cols = 0
    size_grab = 55
    mismatch = 150
    floor_matrix = get_array2(floor,mismatch)
    print("Floor matrix loaded")
    while True:
        
        try:
            tcopy.request_copy()
            time1 = time.time()
            grab = ti.grab_frame()
            time2 = time.time()
            time_grab = time2-time1
            if not check:
                rows,cols = grab.shape
                check = True
            cv2.rectangle(grab,(20,20),(cols-20,rows-20),5)
            cv2.rectangle(grab,(20,rows-20-size_grab),(20+size_grab,rows-20),5)

            ripped_image = grab[20:cols-20][20:rows-20]



            time3 = time.time()
            test_matrix = get_array2(ripped_image,size_grab)
            grab_matrix = test_matrix

            time4 = time.time()
            time_get_array = time4-time3

            time5 = time.time()
            #floor_with_match = floor_rgb.copy()
            min_score, min_start_coordinate = find_match3(test_matrix,floor_matrix,pool)
            time6 = time.time()
            time_find_match = time6 - time5

            
            #if min_score < 2200:
            time7 = time.time()
            floor_with_match = outline_region(min_start_coordinate,test_matrix,tcopy.get_copy(),9)
            
            font = cv2.FONT_HERSHEY_SIMPLEX
            
            
            cv2.rectangle(floor_with_match,(0,0),(188,20),(255,255,255),-1)
            cv2.putText(floor_with_match,str(min_score),(12,12), font, 0.4,(0,0,0),1,cv2.LINE_AA)

            cv2.imshow("grab",ripped_image)
            cv2.imshow("area",imS)

            time8 = time.time()
            time_else = time8 - time7

            #print("time_else",time_else)
            print("time_find_match",time_find_match)
            print("total time",str(time8-time1))
            frequ = float(1/(time8-time1))
            print("Frequency",frequ)
            
            #sys.exit(1)
            if cv2.waitKey(1) & 0xFF == ord('q'):
                cv2.imwrite('grab_test.png',grab)
                break
        
        except:
            traceback.print_exc()
