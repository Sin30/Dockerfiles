FROM php:7.0-fpm-alpine

MAINTAINER Jason Guo "sin30.net@gmail.com"

RUN docker-php-ext-install pdo_mysql \
	&& curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer \
	&& composer config -g repo.packagist composer https://packagist.phpcomposer.com \
	&& composer global require "hirak/prestissimo:^0.3"

ENV PATH=$PATH:~/.composer/vendor/bin

COPY conf /usr/local/etc

COPY docker-entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

CMD ["php-fpm"]