#!/bin/sh

check_docker() {
    if ! command -v docker &> /dev/null
    then
        echo "Docker does not exist in the build system. Hard exitting."
        exit -1
    fi
}
