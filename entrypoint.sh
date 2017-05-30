#!/bin/bash

cd /projects

if [ ! -e ev3rt-hrp2 ]; then
	git clone https://github.com/ev3rt-git/ev3rt-hrp2
	git submodule init
	git submodule update
fi

cd ev3rt-hrp2
cd cfg 
make 
cd ../base-workspace 
make app=loader 
cd ../sdk/workspace 
make app=$APP_NAME

if [ $UPLOAD -eq 1 ]; then
	cp app /mnt/upload/ev3rt/apps
fi

bash
