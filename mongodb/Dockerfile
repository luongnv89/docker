# For testing some Dockerfile commands

# Based on Ubuntu:14.04
FROM ubuntu

MAINTAINER Luong Nguyen, <luongnv89@gmail.com>

ENV RTC_TAG python

# Update system
RUN apt-get update -y

# First message
RUN echo '*********************************\n*\tReadyToCode environment\n*\tUbuntu: '`uname -a`'\n*\tVersion/Tag: '$RTC_TAG'\n************************************"'

# MINIMUM


# Install github - code version control
RUN apt-get install -y git

# Install vim - editor
RUN apt-get install -y vim

# Install wget - downloader for Unix terminal
RUN apt-get install -y wget

# PYTHON
# Config to use python3 as default interpret
RUN echo "alias python=python3">>~/.bash_aliases

# MONGODB
RUN apt-get install -y apt-transport-https software-properties-common
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
RUN echo "deb [ arch=amd64 ] https://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.6 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-3.6.list
RUN apt-get -y update
RUN apt-get install -y mongodb-org

# Set workspace - where to start working
WORKDIR workspace/

# ADD 
# Usage: Add [source directory or URL] [destination directory]
# ADD README.md /mydata/README.md
# RUN echo "Copied a file"
# ADD tools/ /tools/
# RUN echo "Copied a folder"

# CMD
# Usage: CMD "application" "argument", "argument"
# CMD "echo" "I am CMD"

# ENTRYPOINT
# Usage: ENTRYPOINT application "argument","argument"
# ENTRYPOINT echo
# CMD "Hello docker"
# ENTRYPOINT echo

# ENV
# Usage: ENV key value
# ENV MYNAME Luong
# ENV MYEMAIL luongnv89@gmail.com

# RUN echo $MYNAME
# RUN echo $MYEMAIL

# EXPOSE
# Usage: EXPOSE [port]
# EXPOSE 8080

# USER
# Usage: USER [UID]
# RUN useradd luongnv89
# USER luongnv89

# VOLUME
# Usage: VOLUME ["/dir_1","dir_2",...]
#VOLUME ["~/projects","~/Downloads"]

# WORKDIR
# Usage: WORKDIR /path

RUN echo '*********************************\n*\tThe ReadyToCode environment '$RTC_TAG' is installed sucessfully!\n* git: '`git --version`'\n* vim: '`vi -version`'\n* python: '`python -V`'\n******************************************'
