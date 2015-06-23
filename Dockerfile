# automated build docker
# based on ubuntu:14.04
FROM ubuntu:14.04
MAINTAINER Luong Nguyen <luongnv89@gmail.com>
# Update system
RUN apt-get update
# Installing nodejs and npm
RUN apt-get --assume-yes install nodejs npm
# Installing express and express-generator
RUN npm install express -g
RUN npm install express-generator -g
RUN echo "DONE!"
