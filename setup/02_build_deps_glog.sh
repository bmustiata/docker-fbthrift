#!/usr/bin/env bash

#############################################################################
# build glog
#############################################################################
git clone https://github.com/google/glog
cd glog
git checkout v0.3.5
autoreconf -i
./configure && make && make install

# cleanup
cd /
rm -fr /glog
