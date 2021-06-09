from pyspark import SparkContext
from pyspark.sql import DataFrameReader, SparkSession
from pyspark.sql.types import StructField, StructType, StringType, IntegerType

# 创建SparkSession 对象
spark = SparkSession.builder.appName('my_app_name').master('local').getOrCreate()
# 另外一种创建方式,向SparkSession传递一个SparkContext
# sc = SparkContext.getOrCreate()
# spark = SparkSession(sc)

# 读取mysql/postgresql数据库
# 配置(需要修改)
prop = {'user': 'test_data_datahub_offline',
        'password': 'a9N2BH5PXHf',
        'driver': 'org.postgresql.Driver'}
# database 地址(需要修改)
url = 'jdbc:postgresql://pg.test.yingzi.com:30431/test_data_datahub_offline'
# 读取表
data = spark.read.jdbc(url=url, table='fpf_breeding.ads_tag_person_evaluate_detail', properties=prop)
'''
# 读取json/list数据
stringJSONRDD = spark.sparkContext.parallelize((
"""{"id": "001","name": "zhang","age": 19}""",
"""{"id": "002","name": "zhao","age": 22}""",
"""{"id": "003","name": "sun","age": 23}""")
)
# 创建DataFrame
data = spark.read.json(stringJSONRDD)

# 读取list数据
stringLISTRDD = spark.sparkContext.parallelize(
    [('001', 'zhang', 19), ('002', 'zhao', 22), ('003', 'sun', 23)])
schema = StructType([
    StructField("id", LongType(), True),
    StructField("name", StringType(), True),
    StructField("age", LongType(), True)
])
# 创建 DataFrame，并指定schema
data = spark.createDataFrame(stringCSVRDD, schema)

# 读取txt/csv文件数据
# 从文件airport-codes-na.txt文件中
txtFilePath = "airport-codes-na.txt"
data = spark.read.csv(txtFilePath, header='true', inferSchema='true', sep='\t')
# 从文件departuredelays.txt文件中
csvFilePath = "departuredelays.csv"
data = spark.read.csv(csvFilePath, header='true')
'''
# DataFrame 注册为临时表 tmpTb
data.createOrReplaceTempView("tmpTb")
#需要重复用到的且占用内存小的RDD对象，可以通过rdd.cache()存储起来，之后再次使用的时候，直接读取内存中的RDD对象，节省时间。
data.cache()

# 从临时表中筛选需要的数据
df = spark.sql("SELECT id, age FROM tmpTb")

# 展示数据
df.show()
# 将rdd转换为list，从所有分布式机器上把数据拉下来放在本地展示，容易程序卡死, 且失去分布式效果, 可用limit()限制
df.limit(5).collect()
# 建议使用take()取样展示
df.take(5)

#对筛选出来的RDD的每个元素应用一个函数来返回一个新的RDD
def opera(x):
    return x+1
new_rdd = df.map(lambda x: opera(x))
#将处理结果转换为df
new_df = spark.createDataFrame(new_rdd)

# 把最终的结果写入到mysql, new_df是一个spark DataFrame的数据结构
# ip是数据库访问ip, fpf_breeding是库名, result_tb是表名
new_df.write.mode("append").jdbc(url=url, table="algorithm_center.ads_tag_manager_evaluate_algorithm_scores_tb", properties=prop)
'''
# 写入csv, 用repartition方法保存到3个子文件中
new_df.repartition(3).write.format('csv').mode('overwrite').option('sep', '|').option('header', True).save('result.csv')
# 写入json
new_df.repartition(3).write.format('json').mode('overwrite').save('result.json')
'''

# 关闭spark会话
spark.stop()
