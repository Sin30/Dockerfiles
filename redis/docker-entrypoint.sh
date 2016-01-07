#!/bin/bash

set -eo pipefail

if [ "$1" = 'redis-server' ]; then
	chown -R redis .
	echo 1 > /proc/sys/vm/overcommit_memory
	echo 2048 > /proc/sys/net/core/somaxconn
	echo never > /sys/kernel/mm/transparent_hugepage/enabled
	exec gosu redis "$@"
fi

exec "$@"