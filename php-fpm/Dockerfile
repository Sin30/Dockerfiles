FROM php:7.0-fpm-alpine

MAINTAINER Jason Guo "sin30.net@gmail.com"

RUN docker-php-ext-install pdo_mysql \
	&& curl -fsSL 'https://github.com/phpredis/phpredis/archive/php7.zip' -o phpredis-php7.zip \
	&& unzip phpredis-php7.zip \
	&& rm phpredis-php7.zip \
	&& ( \
		cd phpredis-php7 \
		&& phpize \
		&& ./configure \
		&& make \
		&& make install \
	) \
	&& rm -r phpredis-php7 \
	&& docker-php-ext-enable redis

COPY conf /usr/local/etc

COPY docker-entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

CMD ["php-fpm"]