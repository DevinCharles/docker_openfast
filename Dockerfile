# Use Ubuntu 17.10 docker image
FROM ubuntu:17.10

# Install packages
RUN apt-get update
RUN apt-get install -y \
  build-essential \
  cmake \
  wget \
  gfortran \
  libopenblas-base \
  libopenblas-dev \
  unzip

COPY openfast /opt/openfast

RUN cd /opt/openfast && mkdir build && cd build &&  cmake ../ && make && make install
