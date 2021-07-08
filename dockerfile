FROM python:3.7
# 安装python3.7.2
RUN python -m pip install --upgrade pip
RUN mkdir -p /usr/src/ManagerEval
RUN mkdir -p /usr/local/java
# 和copy一样，复制文件到指定目录，但是copy不能解压，add自动解压
ADD jdk-8u291-linux-x64.tar.gz /usr/local/java
# 重命名(不知道文件名可以现在宿主机解压后看一下)
RUN ln -s /usr/local/java/jdk1.8.0_291 /usr/local/java/jdk
WORKDIR /usr/src/ManagerEval
#COPY pip.conf ~/.pip/pip.conf
COPY . /usr/src/ManagerEval
RUN pip install --default-timeout=1000 -r /usr/src/ManagerEval/requirements.txt
RUN ln -s /usr/local/python3/bin/uwsgi /usr/bin/uwsgi
#ENV environment test
CMD ["bash", "/usr/src/ManagerEval/main.sh"]
