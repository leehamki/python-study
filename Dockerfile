FROM ubuntu:16.04
MAINTAINER Fabbit <itsinil@gmail.com>

#apt 패키지 업데이트 및 설치
RUN apt-get update
RUN apt-get install -y software-properties-common vim curl git
RUN add-apt-repository ppa:jonathonf/python-3.6
RUN apt-get update

#python3.6 install
RUN apt-get install -y build-essential python3.6 python3.6-dev python3-pip python3.6-venv

#node & npm install
#RUN curl -sL https://deb.nodesource.com/setup_6.x |  bash -
#RUN apt-get install -y nodejs

# update pip
RUN python3.6 -m pip install pip --upgrade
RUN python3.6 -m pip install wheel

RUN echo 'alias python=python3.6' >> ~/.bashrc && echo 'alias pip=pip3.6' >> ~/.bash_aliases

EXPOSE 80
