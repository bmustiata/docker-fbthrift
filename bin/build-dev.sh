#!/usr/bin/env bash

PROJECT_FOLDER=$(readlink -f "$(dirname "$0")/..")
cd $PROJECT_FOLDER

docker build -f ./Dockerfile.dev -t fbthrift-dev .

