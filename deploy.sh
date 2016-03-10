#!/usr/bin/env bash
docker build -t gs-rest-service-102nn .
docker rm -f gs-rest-service-102nn &> /dev/null || true
docker run \
   -d --name gs-rest-service-102nn \
   -p 102nn:8080 \
   gs-rest-service-102nn