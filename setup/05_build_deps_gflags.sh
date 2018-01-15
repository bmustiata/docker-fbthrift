#!/usr/bin/env bash

#############################################################################
# Build gflags
#############################################################################
git clone https://github.com/gflags/gflags
cd gflags
git checkout v2.2.1
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX:PATH=/usr ..
make
make install

# cleanup
cd /
rm -fr /gflags

