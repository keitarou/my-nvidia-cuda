FROM nvidia/cuda:9.0-cudnn7-runtime

RUN apt update 
RUN apt install -y git wget
RUN apt install -y python3-pip
RUN pip3 install tensorflow-gpu keras
