# For testing some Dockerfile commands

# Based on Ubuntu:14.04
FROM ubuntu:14.04

MAINTAINER Luong Nguyen, <luongnv89@gmail.com>

ENV RTC_TAG php-mongodb

# Update system
RUN apt-get update -y --fix-missing

# First message
RUN echo '*********************************\n*\tReadyToCode environment\n*\tUbuntu: '`uname -a`'\n*\tVersion/Tag: '$RTC_TAG'\n************************************"'

ENV MONGO_VERSION 2.2.7
ENV MONGO_PGP 2.2
ENV MONGO_PHP_VERSION 1.5.5

#Install php and dependenceis
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && \
    apt-get -yq install \
        curl \
        git \
        make \
        apache2 \
        wget \
        libapache2-mod-php5 \
        php5 \
        php5-fpm \
        php5-dev \
        php5-gd \
        php5-curl \
        php5-mcrypt \
        libpcre3-dev \
        pkg-config \
        php-pear \
        php-apc && \
    rm -rf /var/lib/apt/lists/*

RUN sed -i "s/variables_order.*/variables_order = \"EGPCS\"/g" /etc/php5/apache2/php.ini
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer


RUN curl -SL "https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-$MONGO_VERSION.tgz" -o mongo.tgz \
  && curl -SL "https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-$MONGO_VERSION.tgz.sig" -o mongo.tgz.sig \
  && curl -SL "https://www.mongodb.org/static/pgp/server-$MONGO_PGP.asc" -o server-$MONGO_PGP.asc \
  && gpg --import server-$MONGO_PGP.asc \
  && gpg --verify mongo.tgz.sig \
  && tar -xvf mongo.tgz -C /usr/local --strip-components=1 \
  && rm mongo.tgz*

RUN pecl install mongo-$MONGO_PHP_VERSION && \
    mkdir -p /etc/php5/mods-available && \
    echo "extension=mongo.so" > /etc/php5/mods-available/mongo.ini && \
    ln -s /etc/php5/mods-available/mongo.ini /etc/php5/cli/conf.d/mongo.ini && \
    ln -s /etc/php5/mods-available/mongo.ini /etc/php5/apache2/conf.d/mongo.ini && \
    ln -s /etc/php5/mods-available/mcrypt.ini /etc/php5/cli/conf.d/mcrypt.ini && \
    ln -s /etc/php5/mods-available/mcrypt.ini /etc/php5/apache2/conf.d/mcrypt.ini

RUN pecl install mongodb
RUN echo "extension=mongodb.so">>/etc/php5/cli/php.ini
RUN echo "extension=mongodb.so">>/etc/php5/fpm/php.ini

RUN a2enmod rewrite
RUN rm -f /etc/apache2/sites-enabled/000-default.conf

ADD run.sh /run.sh

VOLUME ["/var/log/apache2"]

EXPOSE 80

CMD ["./run.sh"]

RUN echo "Start a container: docker run -it -v ABSOLUTED_PATH_TO_PROJECT/:/var/www/ -p 8888:80 ready-to-code:'$RTC_TAG' /bin/bash"
