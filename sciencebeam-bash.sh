#!/bin/bash

set -e # everything must succeed.

output_dir=.temp

image_name=elifesciences/sciencebeam

host_dir=$(pwd)/${output_dir}
container_dir=/home/sciencebeam/data

echo "host_dir: ${host_dir}"
echo "container_dir: ${container_dir}"

docker run --net sciencebeam-texture -v ${host_dir}:${container_dir} -i -t ${image_name} bash
