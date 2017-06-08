#!/bin/bash

echo "You need to intstall GIT and run DOCKER start"

echo "Git clone api-demo on sibling directory"
echo "please remove /api-demo directory if exists"
git clone -b develop https://github.com/jrsalgado/api-demo.git ../api-demo

echo "Git clone web-app-demo on sibling directory"
echo "Please remove /web-app-demo directory if exists"
git clone -b develop https://github.com/jrsalgado/api-demo.git ../web-app-demo

echo "Build images from api-demo and web-app-demo"
docker-compose -f docker-compose.yml -f develop.yml build --no-cache

echo "Start service"
docker-compose -f docker-compose.yml -f develop.yml up