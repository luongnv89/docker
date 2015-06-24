# For testing some Dockerfile commands

# Based on Ubuntu:14.04
FROM ubuntu:14.04

MAINTAINER Luong Nguyen, <luongnv89@gmail.com>

# ADD 
# Usage: Add [source directory or URL] [destination directory]
ADD README.md /mydata/README.md
RUN echo "Copied a file"
ADD tools/ /tools/
RUN echo "Copied a folder"

# CMD
# Usage: CMD "application" "argument", "argument"
CMD "echo" "I am CMD"

# ENTRYPOINT
# Usage: ENTRYPOINT application "argument","argument"
ENTRYPOINT echo
CMD "Hello docker"
ENTRYPOINT echo

# ENV
# Usage: ENV key value
ENV MYNAME Luong
ENV MYEMAIL luongnv89@gmail.com

RUN echo $MYNAME
RUN echo $MYEMAIL

RUN echo "DONE!"
