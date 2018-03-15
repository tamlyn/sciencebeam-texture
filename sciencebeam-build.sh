#!/bin/bash

set -e # everything must succeed.

commit=8b3a159b34e5d0bcfd915de5b9b29ceed1974b48
image_name=elifesciences/sciencebeam

echo "commit: ${commit}"
docker build -f Dockerfile.sciencebeam -t ${image_name}:${commit} -t ${image_name}:latest --build-arg commit=${commit} .
