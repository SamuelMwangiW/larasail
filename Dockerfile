FROM ubuntu:20.04

RUN sed -E -i 's#http://[^\s]*archive\.ubuntu\.com/ubuntu#http://ke.archive.ubuntu.com/ubuntu#g' /etc/apt/sources.list

RUN apt-get update && apt-get install -y curl sudo vim

ENV TZ=Africa/Nairobi

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN curl -sL https://github.com/thedevdojo/larasail/archive/master.tar.gz | tar xz && /bin/bash larasail-master/install

