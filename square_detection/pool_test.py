import multiprocessing,time
def check_links(x):
    x = x**5
    return x

def main():
    time1 = time.time()
    pool = multiprocessing.Pool(10)
    a = range(0,10)
    results = pool.map(check_links, a)


    pool.close()
    pool.join()
    time2 = time.time()

    diff_time = time2-time1

    print("diff_time",diff_time)

if __name__ == '__main__':
    main()
