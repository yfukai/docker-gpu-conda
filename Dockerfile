FROM nvidia/cuda:10.2-cudnn8-devel-ubuntu18.04

ENV PATH="/opt/miniconda3/bin:${PATH}"
ARG PATH="/opt/miniconda3/bin:${PATH}"
ENV JAVA_HOME="/usr/lib/jvm/java-11-openjdk-amd64/"

RUN apt-get update -q \
      && apt-get install -q -y \
      bzip2 \
      ca-certificates \
      git \
      gcc \
      libglib2.0-0 \
      libsm6 \
      libxext6 \
      libxrender1 \
      mercurial \
      subversion \
      wget \
      && apt-get clean
      && rm -rf /var/lib/apt/lists/*

RUN wget \
    https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh \
    && mkdir /root/.conda \
    && bash Miniconda3-latest-Linux-x86_64.sh -b -p /opt/miniconda3 \
    && rm -f Miniconda3-latest-Linux-x86_64.sh 

