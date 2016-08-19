FROM alpine:latest
MAINTAINER Lorin Zahra-Newman <loriezn@gmail.com>
VOLUME /config
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
htop \
nmap \
netcat \
screen \
lsof \
python-dev \
libssl-dev \
libffi-dev \
fonts-font-awesome
RUN wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.31.1/install.sh | bash && \
source ~/.bashrc && \
nvm install 6.3.1

