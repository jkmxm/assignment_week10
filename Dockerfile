FROM ubuntu:latest

RUN apt-get update 
RUN apt-get install -y 'python3.10'
RUN apt-get install -y git
RUN apt-get install -y tree

WORKDIR "/root"
RUN mkdir A
RUN mkdir B
RUN mkdir C
RUN mkdir files
WORKDIR "/root/files"
RUN touch a.txt b.txt c.txt
WORKDIR "/root"
RUN git clone https://github.com/jkmxm/assignment_week8.git
RUN tree 

