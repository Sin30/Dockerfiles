#!/bin/sh

set -eo pipefail

export APP_ENV=${APP_ENV:-production}

if [ "$1" = 'php-fpm' ]; then
	cd /usr/local/etc/php && ln -sf php.ini-${APP_ENV} php.ini && cd -
	exec php-fpm
fi

exec "$@"