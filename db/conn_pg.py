import time
import traceback
import pandas as pd
# 导入postgrep数据库访问模块
import psycopg2

class PostgresConn(object):
    def __init__(self, db_conn_config, log_info_file, log_error_file):
        self.db_conn_config = db_conn_config
        self.log_info_file = log_info_file
        self.log_error_file = log_error_file
        self.conn = None
        self._conn()

    def _conn(self):
        '''
        访问数据库
        :return: 函数执行状态，若成功返回[True, _]，若失败返回[False, exception]
        '''
        try:
            self.conn = psycopg2.connect(**self.db_conn_config)
            return True, ''
        except Exception as e:
            return False, e

    def _reConn(self, num=3, stime=10):
        '''
        尝试重连数据库，每隔10s尝试一次，总共尝试3次
        :param num: 重连次数
        :param stime: 重连间隔时间
        :return: 函数执行状态，若成功返回[True, _]，若失败返回[False, exception]
        '''
        _number = 0
        _status = True
        while _status and _number <= num:
            try:
                self.conn.ping()  # cping 校验连接是否异常
                _status = False
                return True, ''
            except:
                state, exception_info = self._conn()
                if state == True:  # 重新连接,成功退出
                    _status = False
                    return True, ''
                _number += 1
                time.sleep(stime)  # 连接不成功,休眠1min,继续循环，直到成功或重试次数结束
        return False, exception_info

    def query(self, sql=''):
        '''
        获取数据模块，获取所有数据记录
        :param sql: SQL语句
        :return: 若无法获取数据，程序中断，无返回；若获取数据成功返回Dataframe格式数据
        '''
        state, exception_info = self._reConn()
        if state == False:
            # 重连失败，日志记录
            self.log_info_file.logger.error('database connect failed!')
            self.log_error_file.logger.error('database connect failed!\n%s' % exception_info)
            exit()
        try:
            # 获取整个指标表的数据，并转换成Dataframe格式
            self.cursor = self.conn.cursor()
            self.cursor.execute(sql)
            # 获取表中指标的字段名称
            cols_name = list(map(lambda x: x[0], self.cursor.description))
            data = self.cursor.fetchall()
            result = pd.DataFrame(data, columns=cols_name)
            self.conn.commit()
            self.cursor.close()
            return result
        except:
            # 指标表获取数据失败，日志记录
            self.log_info_file.logger.error('indicator table connect failed!')
            self.log_error_file.logger.error(traceback.format_exc())
            exit()

    def insert(self, sql, values):
        '''
        保存评价结果模块，一次保存一条记录
        :param sql: SQL语句
        :return:
        '''
        state, exception_info = self._reConn()
        if state == False:
            self.log_info_file.logger.error('database connect failed!')
            self.log_error_file.logger.error('database connect failed!\n%s' % exception_info)
            exit()
        try:
            self.cursor = self.conn.cursor()
            self.cursor.execute(sql, values)
            self.conn.commit()
            self.cursor.close()
        except:
            self.log_info_file.logger.error('score table insert failed!')
            self.log_error_file.logger.error(traceback.format_exc())

    def close(self):
        '''
        断开数据库连接
        :return:
        '''
        self.conn.close()
