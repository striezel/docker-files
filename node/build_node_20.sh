#!/bin/sh
docker build . -t node-20 -f Dockerfile_bookworm --build-arg NODE_VERSION=20.x
