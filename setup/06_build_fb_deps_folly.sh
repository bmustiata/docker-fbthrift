#!/usr/bin/env bash

#############################################################################
# Build folly
#############################################################################
apt-get install -y \
	g++ \
    automake \
    autoconf \
    autoconf-archive \
    libtool \
    libboost-all-dev \
    libevent-dev \
    libdouble-conversion-dev \
    libgoogle-glog-dev \
    libgflags-dev \
    liblz4-dev \
    liblzma-dev \
    libsnappy-dev \
    make \
    zlib1g-dev \
    binutils-dev \
    libjemalloc-dev \
    libssl-dev \
    pkg-config \
    libiberty-dev

git clone https://github.com/facebook/folly
cd folly
git checkout v2018.01.08.00
cd folly  # folly/folly
autoreconf -ivf
./configure CPPFLAGS="-I/usr/local/include" LDFLAGS="-L/usr/local/lib"
make
make install

# cleanup
cd /
rm -fr /folly

