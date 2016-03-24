#!/bin/sh

set -eo pipefail

# allow the container to be started with `--user`
if [ "$1" = 'redis-server' -a "$(id -u)" = '0' ]; then
	chown -R redis .
	echo 1 > /proc/sys/vm/overcommit_memory
	echo 2048 > /proc/sys/net/core/somaxconn
	echo never > /sys/kernel/mm/transparent_hugepage/enabled
	exec gosu redis "$0" "$@"
fi

exec "$@"