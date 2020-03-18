# For testing some Dockerfile commands

# Based on Ubuntu:14.04
FROM ubuntu

# Update system
RUN apt-get update -y

# First message
RUN echo 'Environment: '`uname -a`

# Install github - code version control
RUN apt-get install -y git

# Install vim - editor
RUN apt-get install -y vim

# Install wget - downloader for Unix terminal
RUN apt-get install -y wget

# Install wget - downloader for Unix terminal
RUN apt-get install -y curl

# Install curl - downloader for Unix terminal
RUN apt update -y

# INSTALL NODEJS + NPM

RUN curl -sL https://deb.nodesource.com/setup_13.x -o nodesource_setup.sh
RUN bash nodesource_setup.sh
RUN apt-get install -y nodejs

# Set workspace - where to start working
WORKDIR /workspace/

RUN echo '*********************************\n*\tThe ReadyToCode environment '$RTC_TAG' is installed sucessfully!'
RUN echo '\n* git: '`git --version`
RUN echo '\n* vim: '`vi -version`
RUN echo '\n* nodejs: '`node -v`
RUN echo '\n* npm: '`npm -v`
RUN echo '\n******************************************'
