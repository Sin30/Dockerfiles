FROM php:7.0-fpm-alpine

MAINTAINER Jason Guo "sin30.net@gmail.com"

RUN docker-php-ext-install pdo_mysql

COPY conf /usr/local/etc

COPY docker-entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

CMD ["php-fpm"]