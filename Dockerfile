FROM ubuntu:latest
MAINTAINER Lorin Zahra-Newman <loriezn@gmail.com>
RUN apt-get -y update && \ 
apt-get -y --no-install-recommends install -y  \
apt-utils \
nano \
bash-completion \
git \
build-essential \
automake pkg-config \
gcc \
g++ \
wget \
python-dev \
libssl-dev \
libffi-dev \
fonts-font-awesome

