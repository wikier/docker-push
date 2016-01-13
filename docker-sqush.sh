#!/bin/bash

if [[ $# -eq 0 ]]; then
    echo "No image supplied as first argument"
    echo
    echo "Usage: docker-sqush IMAGE"
    echo
    exit -1
fi

if [[ $1 == *":"* ]]; then
    IMAGE=$1
else
    IMAGE="${1}:latest"
fi

IMAGE_ID=$(docker images -q $IMAGE)

echo "Squashing image ${IMAGE} (${IMAGE_ID})..."
docker save ${IMAGE_ID} | sudo docker-squash -t ${IMAGE} | docker load

echo "Removing old image (${IMAGE_ID})..."
docker rmi ${IMAGE_ID}

NEW_IMAGE_ID=$(docker images -q $IMAGE)
echo "Pushing image ${IMAGE} (${NEW_IMAGE_ID})..."
docker push ${IMAGE}
