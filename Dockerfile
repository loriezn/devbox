# Use phusion/passenger-full as base image. To make your builds reproducible, make

# sure you lock down to a specific version, not to `latest`!

# See https://github.com/phusion/passenger-docker/blob/master/Changelog.md for

# a list of version numbers.
FROM phusion/passenger-full:0.9.19
#FROM phusion/passenger-ruby23:<VERSION>
#FROM phusion/passenger-jruby91:<VERSION>
#FROM phusion/passenger-nodejs:<VERSION>
#FROM phusion/passenger-customizable:<VERSION>

# Set correct environment variables.
ENV HOME /root

# Use baseimage-docker's init process.
CMD ["/sbin/my_init"]

RUN /pd_build/utilities.sh
RUN /pd_build/ruby-2.3.*.sh
RUN /pd_build/jruby-9.1.*.sh
RUN /pd_build/python.sh
RUN /pd_build/nodejs.sh

# ...put your own build instructions here...

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*