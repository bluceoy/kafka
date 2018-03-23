#!/bin/bash

docker run --name kafka -d --restart=always \
    -p 172.18.202.112:9092:9092 \
    -v /data/services/kafka/config:/opt/kafka/config \
    -v /data/kafka/logs:/opt/kafka/logs \
    -v /data/kafka/data:/data/kafka/data \
    -v /etc/localtime:/etc/localtime:ro \
    -v /etc/timezone:/etc/timezone:ro \
    -h kafka112 \
    --add-host kafka111:172.18.202.111 \
    --add-host kafka0111:172.18.0.111 \
    registry.docker.cloudream.com:22000/kafka:1.0.0
