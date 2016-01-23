FROM debian:wheezy
MAINTAINER qida <sunqida@foxmail.com>
 
#fakaixin
#RUN echo "deb http://ftp.us.debian.org/debian/ wheezy-backports main" >> /etc/apt/sources.list

RUN apt-get update
RUN apt-get install -y python-pip
RUN apt-get install 
RUN apt-get autoclean && \
RUN apt-get autoremove && \
RUN pip install shadowsocks==2.8.2

