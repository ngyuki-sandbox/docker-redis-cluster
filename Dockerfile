FROM php:alpine

RUN apk add --no-cache --virtual .build-deps autoconf gcc g++ make &&\
    pecl install redis &&\
    docker-php-ext-enable redis &&\
    apk del .build-deps &&\
    rm -fr /tmp/*

RUN apk add --no-cache --repository https://dl-cdn.alpinelinux.org/alpine/edge/main redis
