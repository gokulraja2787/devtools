#!/bin/sh
source ../build-env.sh

check_docker

echo "continue nginx image build"

docker build . -t gokul2787/devtools:nginx
