# For testing some Dockerfile commands

# Based on Ubuntu:16.04
FROM ubuntu:16.04

MAINTAINER Luong Nguyen, <luongnv89@gmail.com>

ENV RTC_TAG php7

# Update system
RUN apt-get update -y --fix-missing

# Install github - code version control
RUN apt-get install -y git

# Install vim - editor
RUN apt-get install -y vim

# Install wget - downloader for Unix terminal
RUN apt-get install -y wget

# First message
RUN echo '*********************************\n*\tReadyToCode environment\n*\tUbuntu: '`uname -a`'\n*\tVersion/Tag: '$RTC_TAG'\n************************************"'

#Install php and dependenceis
RUN apt-get install -y nginx
RUN apt-get install -y php7.0 php7.0-fpm php7.0-cli php7.0-common php7.0-mbstring php7.0-gd php7.0-intl php7.0-xml php7.0-mysql php7.0-mcrypt php7.0-zip

ADD run.sh /run.sh

EXPOSE 80

CMD ["./run.sh"]

RUN echo "Start a container: docker run -it -v ABSOLUTED_PATH_TO_PROJECT/:/var/www/ -p 8888:80 ready-to-code:'$RTC_TAG' /bin/bash"
