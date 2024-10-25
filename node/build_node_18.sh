#!/bin/sh
docker build . -t node-18 -f Dockerfile_bullseye --build-arg NODE_VERSION=18.x
