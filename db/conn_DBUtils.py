import psycopg2
from concurrent.futures import ThreadPoolExecutor
from DBUtils.PooledDB import PooledDB
import numpy as np
import threading as th

class SQLPool:
    conn_status = None
    pool = None
    _enviro = 0
    _mincachnum = 8

    def __init__(self, enviro, mincachnums):
        self.conn_status = False

        if 0 <= enviro < 3:
            self._enviro = int(enviro)
        else:
            self._enviro = 0
        if 0 < mincachnums < 64:
            self._mincachnum = int(mincachnums)
        else:
            self._mincachnum = 8

        # self.pool = self.create_pool()
        # self.conn_status = False
        # self.conn = None
        # self.cur = None

    def create_pool(self):
        """
        创建数据库连接池
        :return: 连接池
        """
        try:
            self.pool = PooledDB(creator=psycopg2,
                                 maxconnections=0,  # 连接池允许的最大连接数，0和None表示不限制连接数
                                 mincached=self._mincachnum,  # 初始化时，链接池中至少创建的空闲的链接，0表示不创建
                                 maxcached=0,  # 链接池中最多闲置的链接，0和None不限制
                                 maxusage=0,  # 一个链接最多被重复使用的次数，None表示无限制
                                 blocking=True,  # 连接池中如果没有可用连接后，是否阻塞等待。True，等待；False，不等待然后报错
                                 user=db_config[self._enviro]['user'],
                                 password=db_config[self._enviro]['password'],
                                 database=db_config[self._enviro]['dbname'],
                                 host=db_config[self._enviro]['host'],
                                 port=db_config[self._enviro]['port'])

            self.conn_status = True
            return True
        except Exception as e:
            log_error_spem_offline.logger.error('数据库连接错误:%s' % e)
            self.conn_status = False
            return False

    # 连接数据库连接池
    def _get_pool_conn(self):
        if not self.pool:
            self.create_pool()
        return self.pool.connection()

    def _re_conn(self, num, stime):
        for uu in range(num):
            try:
                conn = self._get_pool_conn()
                if conn.closed == 0:  # 重新连接成功，成功退出
                    self.conn_status = True
                    return True
            except:
                self.conn_status = False
                log_error_spem_offline.logger.error("第 %d 次新连接失败！", uu + 1)
            time.sleep(stime)
        return False

    def select_data(self, sql):
        conn = None
        cur = None
        result = ()
        try:
            conn = self._get_pool_conn()
            cur = conn.cursor()
            cur.execute(sql)
            result = cur.fetchall()
            self.conn_status = True

        except Exception as e:
            # log_info_spem_offline.logger.info("读数据失败,cause ")
            # conn.rollback()
            self.conn_status = False
            result = ()
        finally:
            if conn:
                conn.close()
            if cur:
                cur.close()
        return result

    def save_data(self, sql, args):
        """
        保存数据库
        :param sql: 执行sql语句
        :param args: 添加的sql语句的参数 list[tuple]
        """
        conn = None
        cur = None
        result = False
        try:
            conn = self._get_pool_conn()  # conn = self.pool.connection()
            cur = conn.cursor()
            cur.executemany(sql, args)
            conn.commit()
            # log_info_spem_offline.logger.info("结果写入成功!")
            self.conn_status = True
            result = True
        except Exception as e:
            self.conn_status = False

            # log_info_spem_offline.logger.info("结果写入失败,cause ")
            conn.rollback()
            result = False
        finally:
            if conn:
                conn.close()
            if cur:
                cur.close()
        return result
