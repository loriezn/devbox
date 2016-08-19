FROM alpine:latest
MAINTAINER Lorin Zahra-Newman <loriezn@gmail.com>
VOLUME /config
RUN apk update && \ 
apk install --update -y  \
build-base \
apk-tools \
apk-cron \
nano \
bash \
bash-completion \
git \
libc6-dev \
libc-dev \
gcc \
g++ \
make \
dpkg-dev \
automake \
pkg-config \
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