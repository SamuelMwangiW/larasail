FROM ubuntu:20.04

RUN apt-get update && apt-get install -y curl sudo

RUN curl -sL https://github.com/thedevdojo/larasail/archive/master.tar.gz | tar xz && /bin/bash larasail-master/install

