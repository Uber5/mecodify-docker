FROM php:7.0-apache
MAINTAINER Chris927 <chris@uber5.com>

ARG RELEASE=1.30
RUN set -ex \
  && curl -L https://github.com/wsaqaf/mecodify/archive/${RELEASE}.tar.gz -o source.tar.gz \
  && tar xfz source.tar.gz \
  && rm source.tar.gz \
  && mv mecodify-${RELEASE}/* /var/www/html/
