#!/bin/sh
# 构建镜像
docker build -t sentinel-dashboard:1.8.6 .
# 运行容器
docker run --name sentinel-dashboard -p 8718:8080 --privileged=true -d sentinel-dashboard:1.8.6