#!/usr/bin/python3.7
# -*- coding: UTF-8 -*-
from pyflink.datastream import StreamExecutionEnvironment, CheckpointingMode
from pyflink.table import StreamTableEnvironment, TableConfig, DataTypes, CsvTableSink, WriteMode, SqlDialect

s_env = StreamExecutionEnvironment.get_execution_environment()
s_env.set_parallelism(1)
# 必须开启checkpoint，时间间隔为毫秒，否则不能输出数据
s_env.enable_checkpointing(3000)

st_env = StreamTableEnvironment.create(s_env, TableConfig())
st_env.use_catalog("default_catalog")
st_env.use_database("default_database")
sourceKafkaDdl = """
    create table sourceKafka(
        id int comment '序号',
        name varchar comment '姓名'
    )comment '从kafka中源源不断获取数据' 
    with(
        'connector' = 'kafka',
        'topic' = 'flink_test2',        
        'properties.bootstrap.servers' = '192.168.113.11:9092',
        'scan.startup.mode' = 'earliest-offset',
        'format' = 'json'
    )
    """
st_env.execute_sql(sourceKafkaDdl)

fieldNames = ["id", "name"]
fieldTypes = [DataTypes.INT(), DataTypes.STRING()]
csvSink = CsvTableSink(fieldNames, fieldTypes, "/root/tiamaes/result.csv", ",", 1, WriteMode.OVERWRITE)
st_env.register_table_sink("csvTableSink", csvSink)

resultQuery = st_env.sql_query("select * from sourceKafka")
resultQuery.insert_into("csvTableSink")

st_env.execute("pyflink-kafka-v2")
