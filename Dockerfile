FROM php:7.0-apache
MAINTAINER Chris927 <chris@uber5.com>

RUN docker-php-ext-install pdo pdo_mysql mysqli

RUN apt-get update \
  && apt-get install -y git

RUN git clone https://github.com/Chris927/mecodify.git \
  && cd mecodify \
  && git checkout configurable-signup \
  && mv ./* /var/www/html/
