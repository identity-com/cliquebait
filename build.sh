#!/bin/bash
set -e
set -x 

export IMAGE_NAME=${IMAGE_NAME:-"civicteam/geth-privatenet-poa"}
export GETH_VERSION=${GETH_VERSION:-"v1.8.17"}

docker build --pull --build-arg GETH_VERSION=$GETH_VERSION -t $IMAGE_NAME:$GETH_VERSION .
docker tag $IMAGE_NAME:$GETH_VERSION $IMAGE_NAME:stable

# docker push $IMAGE_NAME:latest
# docker push $IMAGE_NAME:$GETH_VERSION

