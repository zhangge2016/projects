import datetime

now = datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S')
# 近一年
self.recent_year = (datetime.datetime.now()+datetime.timedelta(days=-365)).strftime("%Y-%m-%d %H:%M:%S")
# 近一月
self.recent_month = (datetime.datetime.now()+datetime.timedelta(days=-30)).strftime("%Y-%m-%d %H:%M:%S")

pass_interval_date = datetime.timedelta(seconds=pass_interval_timestamp)