#!/usr/bin/env bash

#############################################################################
# build mstch
#############################################################################
git clone https://github.com/no1msd/mstch
cd mstch
git checkout 1.0.2
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX:PATH=/usr ..
make
make install

# cleanup
cd /
rm -fr /mstch
