#!/bin/sh
docker build . -t node-04 -f Dockerfile_buster --build-arg NODE_VERSION=4.x
