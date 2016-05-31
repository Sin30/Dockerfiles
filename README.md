# Dockerfiles
Docker files to build docker images.

```shell
cp .env.example .env
vi .env
cp docker-compose-example.yml docker-compose.yml
vi docker-compose.yml
docker-compose up
```

Use `docker-machine ip default` to find your machine's ip.

Visit `http://your_machine_ip/` to test.

You can put your php scripts in /html folder, and public files in /html/public folder.

TODO:

* redis image priviledge mode for overcommit_memory, somaxconn, transparent_hugepage
* redis image config tcp-backlog 128
* php-fpm image needs to active hugepage

Wait for version 1.12 to support --sysctl option.