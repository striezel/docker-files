#!/bin/sh
docker build . -t node-12 -f Dockerfile_bullseye --build-arg NODE_VERSION=12.x
