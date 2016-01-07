FROM php:7.0-fpm

MAINTAINER Jason Guo "sin30.net@gmail.com"

RUN apt-get update && \
	docker-php-ext-install pdo_mysql && \
	rm -rf /var/lib/apt/lists/*

COPY conf /usr/local/etc

COPY docker-entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

CMD ["php-fpm"]