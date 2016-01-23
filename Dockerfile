FROM ubuntu:trusty



RUN apt-get update && \
    apt-get install -y --force-yes -m python-pip python-m2crypto &&\
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN pip install shadowsocks


RUN sudo ssserver -p 443 -k shanlfn -m rc4-md5 --user nobody -d start


EXPOSE 443
