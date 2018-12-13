import cv2,threading,time,traceback,sys
import numpy as np
import multiprocessing
from numpy import linalg as LA

class ThreadImage(threading.Thread):
    current_grab = None
    stop = False
    cap = None
    def __init__(self):
        threading.Thread.__init__(self)
        self.cap  = cv2.VideoCapture(1)
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
def rotateImage(param):
    image = param[1]
    angle = param[0]
    image_center = tuple(np.array(image.shape[1::-1]) / 2)
    rot_mat = cv2.getRotationMatrix2D(image_center, angle, 1.0)
    result = cv2.warpAffine(image, rot_mat, image.shape[1::-1], flags=cv2.INTER_LINEAR)
    return result
def rotate(pool3,img,degree):
    work = []
    skip = 1
    final_array = []
    for x in range(degree*-1,degree+1,skip):
        work.append([x,img])

    results = pool3.map(rotateImage,work)
    for result in results:
        final_array.append(result)
    return final_array
    
def array_ripper(param):
    array = param[1]
    output = []
    index = param[0]
    size = param[2]
    rows,cols = array.shape
    row_max = int(rows/size)*size
    col_max = int(cols/size)*size
    row_matrix = []
    time3 = time.time()
    skip = 2
    for y in range(0,col_max,size):        
        count = 0
        sum_colors = 0
        for x2 in range(index*size,(index*size)+size,skip):
            for y2 in range(y,y+size,skip):
                try:
                    rgb = array[x2][y2]
                    if rgb > 120:
                        sum_colors += 255
                    else:
                        sum_colors += 0
                    #sum_colors += rgb
                    count += 1
                except:
                    #print("self.array",len(self.array))
                    print(x2)
                    #print("BREAK")
                    #sys.exit(0)
        row_matrix.append(float(sum_colors/count))
    return row_matrix
def get_array3(pool2,img,localization_size):

    col_max = int(len(img[0])/localization_size)*localization_size
    row_max = int(len(img)/localization_size)*localization_size
    #print("col_max",col_max)
    #print("len(img[0])",len(img[0]))
    #print("len(img)",len(img))
    #print("localization_size",localization_size)

    thread_rows = 1

    total_threads = int(len(img)/(thread_rows*localization_size))
    #print(total_threads,"total_threads")

    

    #final_array = []*total_threads
    final_array = []

    work = []
    for x in range(0,total_threads):
        work.append([x,img,localization_size])

    results = pool.map(array_ripper,work)
    for result in results:
        final_array.append(result)
        #print("Result::",result)
    #print("len(final_array)",len(final_array))
    #print("len(final_array[0])",len(final_array[0]))
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
        for xg in range(0,len(grab_matrix),skip):                
            floor_match_row = []
            for yg in range(len(grab_matrix[0])-1,-1,-1*skip):
                #print("x+xg",x+xg)
                #print("yg",yg)
                #this could use some tweaking
                if(yg >= 5):
                    distance_factor = 1
                else:
                    distance_factor = 1/(len(grab_matrix[0])-yg)
                try:
                    #check_count += 1
                    floor_match_row.append(floor_matrix[index+xg][y+yg])
                    value = abs(floor_matrix[index+xg][y+yg]-grab_matrix[xg][yg])*distance_factor
                    #print("floor_matrix[index+xg][y+yg]",floor_matrix[index+xg][y+yg])
                    #print("grab_matrix[xg][yg]",grab_matrix[xg][yg])
                    #print("value",value)
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


def outline_region(min_location,matrix_values,floor_img,square_size):
    time1 = time.time()
    x1 = min_location[0]*square_size
    y1 = min_location[1]*square_size
    print("X1:",x1,"Y1:",y1)
    #print("x1",x1)
    #print("y1",y1)
    x2 = x1+len(matrix_values[0])*square_size+square_size
    y2 = y1+len(matrix_values)*square_size+square_size
    #print("x2",x2)
    #print("y2",y2)
    
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
            time.sleep(0.001)
    def get_copy(self):
        return self.output
    def request_copy(self):
        self.copy_image = True


if __name__ == "__main__":
    pool = multiprocessing.Pool(6)
    pool2 = multiprocessing.Pool(4)
    pool3 = multiprocessing.Pool(2)
    grab_matrix = None
    floor = cv2.imread("floor30.png",cv2.IMREAD_GRAYSCALE)
    floor_rgb = cv2.cvtColor(floor,cv2.COLOR_GRAY2RGB)
    imS = cv2.resize(floor_rgb, (180,360))
    #imS = floor_rgb
    tcopy = ThreadCopy(imS)
    tcopy.start()
    ti = ThreadImage()
    ti.start()
    check = False
    rows = 0 
    cols = 0
    size_grab = 50
    mismatch = 30
    floor_matrix = get_array3(pool2,floor,mismatch)
    print("Floor matrix loaded")
    avg = 1
    run_cnt = 0
    avg_time = 0
    max_score = 0
    while True:
        
        try:
            time1 = time.time()
            tcopy.request_copy()
            
            grab = ti.grab_frame()
            
            
            if not check:
                rows,cols = grab.shape
                for x in range(rows):
                    for y in range(cols):
                        if(y >= 5):
                            max_score += 255
                        else:
                            max_score = 255*(1/(cols-y))
                print("max_score",max_score)
                        
                check = True

            
            
            time2 = time.time()
            time_grab = time2-time1
            pts1 = np.float32([[182,25],[442,25],[1,358],[638,366]])
            pts2 = np.float32([[0,0],[200,0],[0,400],[200,400]])

            M = cv2.getPerspectiveTransform(pts1,pts2)

            corrected = cv2.warpPerspective(grab,M,(200,400))

            

            for x in range(0,cols,size_grab):
                for y in range(0,rows,size_grab):
                    cv2.rectangle(corrected,(x,y),(x+size_grab,y+size_grab),5)

            rotated_image = rotate(pool3,corrected,4)

            time3 = time.time()
            test_matricies = []
            for x in range(len(rotated_image)):
                test_matricies.append(get_array3(pool2,rotated_image[x],size_grab))
            time4 = time.time()
            time_get_array = time4-time3

            time5 = time.time()
            #floor_with_match = floor_rgb.copy()
            mins = []
            for x in range(len(test_matricies)):
                min_score, min_start_coordinate = find_match3(test_matricies[x],floor_matrix,pool)
                mins.append([min_score, min_start_coordinate])
            min_score = 255*rows*cols
            min_start_coordinate = None
            min_x = 0
            for x in range(0,len(mins)):
                if mins[x][0] < min_score:
                    min_score = mins[x][0]
                    min_start_coordinate = mins[x][1]
                    min_x = x
            time6 = time.time()
            time_find_match = time6 - time5
            font = cv2.FONT_HERSHEY_SIMPLEX
            final_matrix = test_matricies[min_x]
            average_array_display = np.zeros([size_grab*(len(final_matrix)),size_grab*(len(final_matrix[0])),1],np.uint8)
            for y in range(len(final_matrix[0])):
                for x in range(len(final_matrix)):
                    #print("final_matrix[x][y]",final_matrix[x][y])
                    color = int(final_matrix[x][y])
                    cv2.rectangle(average_array_display,(y*size_grab,x*size_grab),(y*size_grab+size_grab,x*size_grab+size_grab),(color),-1)
                    cv2.putText(average_array_display,str(color),(int(y*size_grab+size_grab/2),int(x*size_grab+size_grab/2 - 10)), font, 0.4,(0,0,0),1,cv2.LINE_AA)
                    cv2.putText(average_array_display,str(color),(int(y*size_grab+size_grab/2),int(x*size_grab+size_grab/2 + 10)), font, 0.4,(255,255,255),1,cv2.LINE_AA)
                
                            

            
            #if min_score < 2200:
            time7 = time.time()
            floor_with_match = outline_region(min_start_coordinate,test_matricies[min_x],tcopy.get_copy(),15)
            
            

            percent_match = 100*((max_score-min_score)/max_score)
            cv2.rectangle(floor_with_match,(0,0),(188,20),(255,255,255),-1)
            text = str(min_score)
            #text2 = "%"+str(percent_match)
            cv2.putText(floor_with_match,text,(12,12), font, 0.4,(0,0,0),1,cv2.LINE_AA)
            #cv2.putText(floor_with_match,text2,(12,24), font, 0.4,(0,0,0),1,cv2.LINE_AA)


            cv2.imshow("area",floor_with_match)
            cv2.imshow("matrix",rotated_image[min_x])
            cv2.imshow("average",average_array_display)
            cv2.imshow("perspective",corrected)

            time8 = time.time()
            time_else = time8 - time7

            if(run_cnt%avg == 0 and run_cnt != 0):
                
                #print("time_grab",time_grab)
                #print("time_get_array",time_get_array)
                #print("time_find_match",time_find_match)
                #print("time_else",time_else)
                #print("total time",str(time8-time1))
                avgeraged_time = float(avg_time/avg)
                if avg == 1:
                    avgeraged_time = time8-time1
                #print("avgeraged_time",avgeraged_time)
                frequ = float(1/avgeraged_time)
                print("Frequency",frequ)
                avg_time = 0
            else:
                avg_time += time8-time1

            run_cnt += 1
            
            #sys.exit(1)
            if cv2.waitKey(1) & 0xFF == ord('q'):
                cv2.imwrite('grab_test.png',grab)
                break
        
        except:
            traceback.print_exc()
