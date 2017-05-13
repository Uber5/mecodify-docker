FROM php:7.0-apache
MAINTAINER Chris927 <chris@uber5.com>

ARG RELEASE=1.30
RUN curl -L https://github.com/wsaqaf/mecodify/archive/${RELEASE}.tar.gz -o source.tar.gz \
  && gunzip source.tar.gz \
  && mv mecodify-${RELEASE}/* /var/www/html/
