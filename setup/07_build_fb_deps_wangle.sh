#!/usr/bin/env bash

#############################################################################
# Build wangle
#############################################################################
git clone https://github.com/facebook/wangle
cd wangle
git checkout v2018.01.08.00
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX:PATH=/usr ../wangle
make
make install

# cleanup
cd /
rm -fr /wangle

