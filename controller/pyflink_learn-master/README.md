# PyFlink 从入门到精通

基于 PyFlink 的学习文档，通过一个个小实践，便于小伙伴们快速入手 PyFlink

* [1、本地开发环境搭建](#1本地开发环境搭建)
    * [1.1、安装Flink](#11安装Flink)
        * [1.1.1、Mac](#111Mac)
        * [1.1.2、其他系统](#112其他系统)
    * [1.2、安装其他组件](#12安装其他组件)
    * [1.3、安装Python3](#13安装Python3)
* [2、运行](#2运行)


## 1、本地开发环境搭建

### 1.1、安装Flink 
#### 1.1.1、Mac

首先本地的 java 版本需要升级到 8 或 11

```bash
java -version
# 可能会看到 java version "1.8.0_111"
```

然后使用 brew 安装 Flink ，目前 Flink 的最新版本为 1.11.2

```bash
brew switch apache-flink 1.11.2
```

cd 到 `/usr/local/Cellar/apache-flink/1.11.2/libexec/bin/start-cluster.sh` 路径下，启动 flink

```bash
cd /usr/local/Cellar/apache-flink/1.11.2/libexec/bin
sh start-cluster.sh
```

启动后，运行 `jps` 命令，可以看到本地所有的 java 进程，如果 Flink 被正确安装的话，应该可以看到这两个进程 `TaskManagerRunner` 与 `StandaloneSessionClusterEntrypoint` ，代表现在 jobmanager 和 taskmanager 都已经正常启动了。

此时，我们也可以打开网页 [http://localhost:8081/](http://localhost:8081/) ，看到 Flink 作业的管理面板，目前应该显示 Available Task Slots 为 1 （代表现在只有 1 个 taskmanager，且其中只有 1 个 task slot，并行度为 1），还可以看到 Running Jobs 为 0（代表此时没有 Flink 作业在执行）。

另外 flink 的关闭命令为

```bash
sh stop-cluster.sh
```

为了方便，可以修改本地的 `~/.bash_profile` 文件，插入下面的 3 行内容（注意修改版本）然后运行 `source ~/.bash_profile` 来激活修改。

```bash
alias start-flink='/usr/local/Cellar/apache-flink/1.11.2/libexec/bin/start-cluster.sh'
alias stop-flink='/usr/local/Cellar/apache-flink/1.11.2/libexec/bin/stop-cluster.sh'
alias flink='/usr/local/Cellar/apache-flink/1.11.2/libexec/bin/flink'
```

#### 1.1.2、其他系统

请参考 [官方文档](https://ci.apache.org/projects/flink/flink-docs-stable/ops/deployment/local.html)

### 1.2、安装其他组件

本教程会用到 MySQL、Kafka、Zookeeper 等数据库或大数据组件，为了便于统一部署和管理，这里选择使用 docker。

从开发角度来看，以最快的速度搭建起一个可以运行的环境最为重要。基于如下的 3 个角度，解释了为何使用 Docker：
1. Docker 可以很好地实现开发环境和生产环境的一致性。
1. 使用 Docker 可以模拟多节点集群，使用docker-compose 工具，我们可以轻松的在单台开发机上启动多个 Kafka 容器、zookeeper 容器，非常方便的实现了对分布式环境的模拟。
1. Docker 的安装、启动非常迅速。

首先，安装 [docker](https://www.docker.com/) 。

然后，在本教程的项目根目录下，启动 docker 编排服务：

```bash
# windows 系统先加下面这句
# set COMPOSE_CONVERT_WINDOWS_PATHS=1
docker-compose up -d
```

启动后，运行 `docker ps` 可以看到起了 5 个容器，如下所示

```bash
CONTAINER ID        IMAGE                           COMMAND                  CREATED             STATUS              PORTS                                                  NAMES
32d6b6cdf30b        mysql:8.0.22                    "docker-entrypoint.s…"   5 days ago          Up 3 seconds        0.0.0.0:3306->3306/tcp, 33060/tcp                      mysql1
cc8246824903        mysql:8.0.22                    "docker-entrypoint.s…"   5 days ago          Up 3 seconds        33060/tcp, 0.0.0.0:3307->3306/tcp                      mysql2
f732effb7559        redis:6.0.9                     "docker-entrypoint.s…"   5 days ago          Up 5 seconds        0.0.0.0:6379->6379/tcp                                 redis
b62b8d8363c3        wurstmeister/kafka:2.13-2.6.0   "start-kafka.sh"         5 days ago          Up 3 seconds        0.0.0.0:9092->9092/tcp                                 kafka
fe2ad0230ffa        adminer                         "entrypoint.sh docke…"   5 days ago          Up 12 seconds       0.0.0.0:8080->8080/tcp                                 adminer
df80ca04755d        zookeeper:3.6.2                 "/docker-entrypoint.…"   5 days ago          Up 3 seconds        2888/tcp, 3888/tcp, 0.0.0.0:2181->2181/tcp, 8080/tcp   zookeeper
```

解释下各容器的作用：
* mysql + admin：案例 3 会用到。共有 2 个 mysql 容器，其中 mysql1 容器作为待同步的数据源，mysql2 容器作为备份的数仓，admin 容器允许我们使用网页来查看和操作 mysql 容器（只是以防万一本地没有安装 mysql 客户端）。
* kafka + zookeeper：案例 4 会用到。kafka 是高吞吐低延迟的消息中间件，常在业务系统中使用，不理解的话就可以简单地当成数据仓库，是实时流计算必备的组件，本教程里会指定不同的主题（topic）来分别实时存储原始数据和结果数据。zookeeper 常常和 kafka 结合一起使用，用于管理 kafka 的 broker，以及实现负载均衡，简单理解就是让 kafka 更加高效。
* redis：案例 5 会用到。Redis 是基于内存的高性能的非关系型 Key-Value 数据库，同时也支持存储多种数据类型，读写效率都非常高，因而非常便于在实时计算中缓存我们训练好的模型。

PS，为了访问安全，在 `docker-compose.yml` 文件中可以看到我为一些组件设置了密码：
1. MySQL 的账号密码都是 root。
2. Redis 的密码是 redis_password。

很简单地，我们完成了环境的搭建。

另外，停止命令如下：

```bash
# 停止
docker-compose stop

# 停止并删除
docker-compose down
```

如果遇到某个容器启动失败的话，一个简单的方法就是先删掉该容器，然后重新构建，以 kafka 为例：

```bash
docker rm kafka
docker-compose up -d --build
```

### 1.3、安装Python3

PyFlink 要求 python 版本为 3.5、3.6 或 3.7，否则会出错。

推荐使用 miniconda 来搭建 python 环境，优点是体积小、与系统环境隔离、便于管理多个 python 虚拟环境……

网上很容易找到 [python3 安装教程](https://www.jianshu.com/p/0511decff9f8) 。

## 2、运行

先确保以下环节是否走通：
1. python 环境是否 ok 。
1. docker 是否已经启动，容器是否正在运行。
1. Flink 是否正确安装。

一切 ready 后，就完成本地 PyFilnk 开发与测试环境的搭建，让我们开始正题。

教程正文： [PyFlink 从入门到精通](examples/README.md)，代码在 `examples` 目录下可以看到。

本教程目前提供了 5 个案例，如果是新手的话，建议按顺序来学习：
- [x] 1、`批处理 Word Count`：
    - 教你如何使用 PyFlink 来进行批处理
    - 如何使用 Table API 和 SQL API 来实现 groupby 处理逻辑
    - 如何读取文件系统（如本地）上的文件并在处理后存储到另个文件系统（本案例还是本地）
- [x] 2、`自定义函数 UDF`：
    - 教你如何在 PyFlink 中导入 python 的三方依赖包
    - 如何结合 UDF（ 用户自定义的函数 ）来实现复杂的计算逻辑
- [x] 3、`实时 CDC`：
    - 教你如何使用 PyFlink 搭建实时数仓
    - 如何从业务数仓（本案例是 mysql1 ）实时捕获 binlog 中的数据变更，并 upsert 到备份数仓（本案例是 mysql2 ）
- [x] 4、`实时排行榜`：
    - 教你如何使用 PyFlink 来实现有状态流处理
    - 如何在 python 环境中导入和使用 java 编写的聚合函数 jar 包
    - 如何使用滑动窗口，来实现一个指定时间范围内的排行榜。
- [x] 5、`在线机器学习 Online Machine Learning`：
    - 教你如何使用 PyFlink 来进行在线机器学习
    - 如何在 UDF 中连接 Redis，以加载模型和保存模型
    - 如何在 UDF 中训练模型
    - 如何在 UDF 中注册指标和计算指标
    - 如何在 web 页面上实时查看指标，了解算法的运行情况
    - 如何开发 Flask 应用，并基于 Redis 里的最新模型提供预测服务。

运行的方法也很简单，对于每个案例，cd 到案例目录下后，运行下面的脚本（xx 换成对应的脚本名称）即可运行。

```
flink run -m localhost:8081 -py xxx.py
```

接下来，请前往 [PyFlink 从入门到精通](examples/README.md) 吧。