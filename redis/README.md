# Docker image for Redis

This image has to run under privilege mode in order to:

* Set max connection, using `echo 2048 > /proc/sys/net/core/somaxconn`
* Set overcommit memory, using `echo 1 > /proc/sys/vm/overcommit_memory`
* Set transparent hugepage, using `echo never > /sys/kernel/mm/transparent_hugepage/enabled`

```shell
docker run -d --privileged sin30/redis
```
