#coding: utf-8
import multiprocessing
import time

def test(msg):
    print("msg:", msg)
    time.sleep(3)
    print("end")

def multi_processes(func, args, process_num):

    pool = multiprocessing.Pool(processes=4)    # processes为cpu核数，默认为4
    for i in range(process_num):
        pool.apply_async(func, args=args)   #维持执行的进程总数为processes，当一个进程执行完毕后会添加新的进程进去

    pool.close()
    pool.join()   #调用join之前，先调用close函数，否则会出错。执行完close后不会有新的进程加入到pool,join函数等待所有子进程结束
