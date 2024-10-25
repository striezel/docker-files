#!/bin/sh
docker build . -t node-14 -f Dockerfile_bullseye --build-arg NODE_VERSION=14.x
