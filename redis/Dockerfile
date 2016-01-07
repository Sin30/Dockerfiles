FROM redis:3.0

MAINTAINER Jason Guo "sin30.net@gmail.com"

COPY conf /usr/local/etc/redis

COPY docker-entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

CMD ["redis-server", "/usr/local/etc/redis/redis.conf"]