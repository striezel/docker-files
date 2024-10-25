#!/bin/sh
docker build . -t node-16 -f Dockerfile_bullseye --build-arg NODE_VERSION=16.x
