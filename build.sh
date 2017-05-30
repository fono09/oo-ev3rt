#!/bin/bash

docker build -t fono09/oo_ev3rt .
docker run -it --rm \
	-v $PWD/projects:/projects \
	-v $PWD/upload:/mnt/upload \
	-e APP_NAME=helloev3 \
	-e UPLOAD=0 \
	fono09/oo_ev3rt:latest
docker rmi fono09/oo_ev3rt
