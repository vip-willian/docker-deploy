#!/bin/sh
docker run \
-p 3306:3306 \
--name mysql8 \
--privileged=true \
-v /Users/wyann/docker/mysql8/mysql:/etc/mysql \
-v /Users/wyann/docker/mysql8/logs:/logs \
-v /Users/wyann/docker/mysql8/data:/var/lib/mysql \
-v /etc/localtime:/etc/localtime \
-e MYSQL_ROOT_PASSWORD=123456 \
-d mysql:8.0.40-debian