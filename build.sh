#!/bin/bash

APP_NAME=gyroboy
TAG="fono09/oo_ev3rt:1.01"

if [[ "$(docker images -q $TAG 2> /dev/null)" == "" ]]; then
    docker build -t $TAG .
fi

docker run -it --rm \
    -v $PWD/workdir:/workdir \
	-v $PWD/app:/mnt/app \
	-e APP_NAME=$APP_NAME \
    $TAG
