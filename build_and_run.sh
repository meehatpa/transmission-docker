#!/bin/bash

set -xe

docker build -t daemonoid/transmission-docker:latest .
docker push daemonoid/transmission-docker:latest

source ./run.sh
