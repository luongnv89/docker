# automated build docker
# based on ubuntu:14.04

FROM ubuntu:14.04

MAINTAINER Luong Nguyen <luongnv89@gmail.com>

# Update system
RUN apt-get update

# Installing nodejs and npm
RUN apt-get --assume-yes install nodejs npm
# Correct misnaming error
RUN ln -s /usr/bin/nodejs /usr/bin/node
RUN echo "node version: " $(node -v)
RUN echo "npm version:" $(npm -v)

# Installing express and express-generator
RUN npm install express -g
RUN npm install express-generator -g
RUN echo "expressjs version: " $(express -V)



