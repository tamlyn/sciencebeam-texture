#!/bin/bash

set -e # everything must succeed.

image_name=lfoppiano/grobid:0.5.1
port=8085

if [ "$1" == 'stop' ]; then
  docker stop $(docker ps -a -q --filter ancestor=${image_name} --format="{{.ID}}")
else
  docker run --net sciencebeam-texture --name=grobid -t --rm -p ${port}:8070 ${image_name}
fi
