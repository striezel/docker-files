#!/bin/sh
docker build . -t node-24 -f Dockerfile_bookworm --build-arg NODE_VERSION=24.x
