#!/bin/sh

whoami

echo "Starting ngnix"
nginx -g 'daemon off;'
