#!/usr/bin/env bash

git clone https://github.com/no1msd/mstch
cd mstch
git checkout 1.0.2
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX:PATH=/usr ..
make
make install

