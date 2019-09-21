FROM ubuntu:16.04

MAINTAINER Tony Hsu

RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y dist-upgrade
RUN apt-get -y install curl g++ libjson0-dev libjson0 libpq-dev vim libcurl4-openssl-dev


#Time
ENV TW=Asia/Taipei
RUN ln -snf /usr/share/zoneinfo/$TW /etc/localtime && echo $TW > /etc/timezone


RUN  mkdir -p project

COPY . /project

WORKDIR /project
