import multiprocessing
import os
import time,sys




def worker_main(queue):
    print(os.getpid(),"working")
    sys.stdout.flush()
    while True:
        item = queue.get(True)
        print(os.getpid(), "got", item)
        sys.stdout.flush()
        time.sleep(1) # simulate a "long" operation
        
if __name__ == '__main__':
    the_queue = multiprocessing.Queue()
    the_pool = multiprocessing.Pool(3, worker_main,(the_queue,))
    for i in range(5):
        the_queue.put("hello")
        the_queue.put("world")
    the_pool.close()
    the_pool.join()

    


    time.sleep(10)
