#!/bin/bash

set -eo pipefail

export APP_ENV=${APP_ENV:-prod}

if [ "$1" = 'php-fpm' ]; then
	chown -R www-data .
	cd /usr/local/etc/php && ln -sf php.ini-${APP_ENV} php.ini && cd -
	# allocate some huge pages for php-fpm
	sysctl vm.nr_hugepages=128
	exec php-fpm
fi

exec "$@"