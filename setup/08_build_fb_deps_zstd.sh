#!/usr/bin/env bash

#############################################################################
# Build zstd
#############################################################################
git clone https://github.com/facebook/zstd
cd zstd
git checkout zstd-0.4.2
make install

# cleanup
cd /
rm -fr zstd
