FROM phusion/baseimage:latest
MAINTAINER Lorin Zahra-Newman <loriezn@gmail.com>
RUN touch /etc/apt/apt.conf.d/00proxy && \
	echo 'Acquire::http::Proxy "http://192.168.0.10:3142";' >> /etc/apt/apt.conf.d/00proxy
RUN apt-get -y update && \ 
	apt-get -y --no-install-recommends install -y  \
	apt-utils \
	nano \
	bash-completion \
	git \
	fonts-font-awesome && \
	rm -rf /tmp/* /var/tmp/* && \ 
	rm -rf /var/lib/apt/lists/*
 