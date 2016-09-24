FROM php:7.0-fpm-alpine

MAINTAINER Jason Guo "sin30.net@gmail.com"

RUN apk add --no-cache \
		libmcrypt-dev \
		git

RUN apk add --no-cache --virtual .phpize-deps $PHPIZE_DEPS \
    && pecl install redis \
    && docker-php-ext-enable redis \
    && apk del .phpize-deps

RUN docker-php-ext-install pdo_mysql mcrypt \
	&& curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer \
	&& composer config -g repo.packagist composer https://packagist.phpcomposer.com \
	&& composer global require "hirak/prestissimo:^0.3"

ENV PATH=$PATH:~/.composer/vendor/bin

COPY conf /usr/local/etc

COPY docker-entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

CMD ["php-fpm"]