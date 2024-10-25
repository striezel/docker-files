#!/bin/sh
docker build . -t node-20 -f Dockerfile_bullseye --build-arg NODE_VERSION=20.x
