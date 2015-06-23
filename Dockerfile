# automated build docker
FROM ubuntu:14.04
MAINTAINER Luong Nguyen <luongnv89@gmail.com>
RUN apt-get update
RUN apt-get --assume-yes install nodejs npm
RUN npm install express -g
RUN npm install express-generator -g
RUN echo "DONE!"
