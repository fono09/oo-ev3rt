#!/bin/bash

cd /workdir
wget http://www.toppers.jp/download.cgi/ev3rt-beta7-release.zip
unzip ev3rt-beta7-release.zip
cd ev3rt-beta7-release
mv hrp2.tar.xz 
tar xvf hrp2.tar.xz
cd hrp2/cfg 
make 
cd ../base-workspace 
make app=loader 
cd ../sdk/workspace 
make app=$APP_NAME
cp app /mnt/app

bash
