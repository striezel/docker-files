#!/bin/sh
docker build . -t node-26 -f Dockerfile_bookworm --build-arg NODE_VERSION=26.x
