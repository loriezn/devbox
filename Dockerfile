FROM alpine:latest
MAINTAINER Lorin Zahra-Newman <loriezn@gmail.com>
VOLUME /config
RUN apk add --update  \
build-base \
apk-tools \
apk-cron \
nano \
bash \
bash-completion \
git \
libc-dev \
gcc \
g++ \
make \
dpkg-dev \
automake \
pkgconfig \
wget \
htop \
nmap \
nmap-ncat \
socat \
screen \
lsof \
python-dev \
libssl1.0 \
libffi-dev \
curl
RUN wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.31.1/install.sh | bash && \
source ~/.bashrc && \
nvm install 6.3.1