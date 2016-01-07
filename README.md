# Dockerfiles
Docker files to build docker images.

```shell
cp .env.example .env
vi .env
docker-compose pull && docker-compose stop && docker-compose rm -f && docker-compose up -d
```

Use `docker-machine ip default` to find your machine's ip.

Visit `http://your_machine_ip/` to test.

You can put your php scripts in /html folder.
