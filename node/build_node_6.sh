#!/bin/sh
docker build . -t node-06 -f Dockerfile_buster --build-arg NODE_VERSION=6.x
