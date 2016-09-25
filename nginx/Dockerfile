FROM nginx:1.11-alpine

MAINTAINER Jason Guo "sin30.net@gmail.com"

COPY conf /etc/nginx

COPY docker-entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

CMD ["nginx", "-g", "daemon off;"]