FROM php:8.1-alpine

RUN apk update
RUN apk add bash
RUN apk add curl

# INSTALL COMPOSER
RUN curl -s https://getcomposer.org/installer | php
RUN alias composer='php composer.phar'

# INSTALL NGINX
RUN apk add nginx