# Docker image for PHP-FPM

This image has to run under privilege mode in order to allocate Hugepages for php-fpm using `sysctl vm.nr_hugepages=128`

```shell
docker run -d --privileged sin30/php-fpm
```
