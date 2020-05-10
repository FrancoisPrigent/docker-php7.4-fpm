FROM php:7.4-fpm-alpine3.11

RUN apk add g++ \ 
    && apk add make \
    && apk add php7-dev \ 
    && pecl install mongodb-1.7.4 \
    && pecl install redis-5.2.1 \
    && docker-php-ext-enable mongodb redis
