#!/usr/bin/env bash

git clone https://github.com/google/glog
cd glog
git checkout v0.3.5
autoreconf -i
./configure && make && make install

