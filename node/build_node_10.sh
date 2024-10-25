#!/bin/sh
docker build . -t node-10 -f Dockerfile_bullseye --build-arg NODE_VERSION=10.x
