#!/usr/bin/env bash

#############################################################################
# build double-conversion
#############################################################################
git clone https://github.com/google/double-conversion
cd double-conversion
git checkout v3.0.0
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX:PATH=/usr ..
make
make install

# cleanup
cd /
rm -fr /double-conversion

