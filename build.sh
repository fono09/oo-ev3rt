#!/bin/bash

APP_NAME=helloev3
UPLOAD=1
#TAG=b6ab139ce30d
TAG="fono09/oo_ev3rt"

if [[ "$(docker images -q $TAG:latest 2> /dev/null)" == "" ]]; then
    docker build -t $TAG .
fi

docker run -it --rm \
	-v $PWD/projects:/projects \
	-v $PWD/upload:/mnt/upload \
	-e APP_NAME=$APP_NAME \
	-e UPLOAD=$UPLOAD \
    $TAG
