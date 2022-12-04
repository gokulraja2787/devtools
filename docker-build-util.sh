#!/bin/sh
source $(dirname "$0")/../build-env.sh

#Build docker image
# param1: message
# param2: tag
build_docker_image() {
    check_docker
    echo "$2"
    docker build . -t gokul2787/devtools:$1
}

#Push docker image into dockerhub
# param1: message
# param2: tag
publish_docker_image() {
    check_docker
    echo "$2"
    docker push gokul2787/devtools:$1
}
