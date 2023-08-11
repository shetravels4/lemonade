FROM ubuntu:22.04

USER root

RUN apt-get update

RUN apt-get -y install python3
RUN apt-get -y install python3-pip

RUN mkdir -p /deploy/app
COPY app/* /deploy/app/
RUN pip3 install -r /deploy/app/requirements.txt

WORKDIR /deploy/app

USER 1000
EXPOSE 8080

CMD ["python3", "my_web.py"]