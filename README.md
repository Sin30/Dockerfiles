# Dockerfiles
Docker files to build docker images.

```shell
cp .env.example .env
vi .env
docker-compose pull && docker-compose stop && docker-compose rm -f && docker-compose up -d
```