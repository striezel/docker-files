#!/bin/bash
#
# Copyright (C) 2019  Dirk Stolle
#
# SPDX-License-Identifier: LGPL-3.0-or-later

IMAGE="fortunator"

cd "${BASH_SOURCE%/*}" || exit 1
docker image inspect "$IMAGE" > /dev/null 2>&1
if [[ $? -ne 0 ]]
then
  echo "Info: Image $IMAGE does not exist, building it now."
  docker build -t "$IMAGE" .
  if [[ $? -ne 0 ]]
  then
    echo "Docker image build process failed!"
    exit 2
  fi
fi

docker run --rm "$IMAGE"
