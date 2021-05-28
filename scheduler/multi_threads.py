from threading import Thread

class MyThread(Thread):
    def run(self):
        function_name(self.parameters)

    def __init__(self, parameters):
        Thread.__init__(self)
        self.parameters = parameters

def multi_threads(parameters, thread_num=10):
    thread_list = []
    for i in range(1, thread_num):
        t = MyThread(parameters)
        thread_list.append(t)
        t.start()

    # 在这里统一执行线程等待的方法
    for t in thread_list:
        t.join()


