#!/bin/bash

set -e # everything must succeed.

commit=963771408e9ae15c9610726c7d8ac400194921ed
image_name=elifesciences/sciencebeam_texture:${commit}

echo "commit: ${commit}"
docker build -f Dockerfile.texture -t ${image_name} --build-arg commit=${commit} .
docker run -p 4000:4000 ${image_name} npm start
