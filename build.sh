#!/bin/bash

APP_NAME=helloev3
UPLOAD=0

docker build -t fono09/oo_ev3rt .
docker run -it --rm \
	-v $PWD/projects:/projects \
	-v $PWD/upload:/mnt/upload \
	-e APP_NAME=$APP_NAME \
	-e UPLOAD=$UPLOAD \
	fono09/oo_ev3rt:latest
docker rmi fono09/oo_ev3rt
