#!/usr/bin/env bash

apt-get install -y libkrb5-dev

git clone https://github.com/facebook/fbthrift
cd fbthrift
git checkout v2018.01.08.00
cd build
cmake -DCMAKE_INSTALL_PREFIX:PATH=/usr ..
make
make install
