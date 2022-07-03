#!/bin/sh
docker build . -t node-08 -f Dockerfile_buster --build-arg NODE_VERSION=8.x
