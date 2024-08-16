#!/bin/bash
USER_NAME=jovyan
SRC_CONTAINER=/home/$USER_NAME/workspace/src
SRC_HOST="$(pwd)"/src

docker run \
  -it \
  --name inference-server-client \
  --rm \
  --net host \
  --ipc host \
  -e DISPLAY="$DISPLAY" \
  --volume="$SRC_HOST":$SRC_CONTAINER \
  thesis/inference-server-client:tf-v2.11.0