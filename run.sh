#!/bin/sh

docker build -t jekyll .
docker run --rm -it -p 8081:8081 -v ${PWD}:/home jekyll
