FROM python:3.7
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY . /usr/src/app
RUN pip install --default-timeout=1000 -r /usr/src/app/requirements.txt
CMD [ "python", "./main.py"]

