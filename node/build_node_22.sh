#!/bin/sh
docker build . -t node-22 -f Dockerfile_bookworm --build-arg NODE_VERSION=22.x
