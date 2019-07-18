# Debian 10 Slim Image
FROM debian:buster-slim

# Install packages
RUN apt update
RUN apt install -y \
  build-essential \
  cmake \
  wget \
  gfortran \
  libopenblas-base \
  libopenblas-dev \
  unzip \
  git

COPY openfast /opt/openfast
RUN cd /opt/openfast && mkdir build && cd build &&  cmake ../ && make && make install
