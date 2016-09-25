#!/bin/sh

set -eo pipefail

export PHP_FPM_UPSTREAM=${PHP_FPM_UPSTREAM:-php-fpm}

sed -i "s/<PHP_FPM_UPSTREAM>/${PHP_FPM_UPSTREAM}/g" /etc/nginx/upstream/php-fpm.conf

exec "$@"