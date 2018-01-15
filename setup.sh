#!/usr/bin/env bash

buildDeps=" \
		automake \
		bison \
		curl \
		flex \
		g++ \
		libboost-dev \
		libboost-filesystem-dev \
		libboost-program-options-dev \
		libboost-system-dev \
		libboost-test-dev \
        libboost-thread-dev \
		libevent-dev \
		libssl-dev \
		libtool \
		make \
		cmake \
		pkg-config \
        git
	"

apt-get update
apt-get install -y $buildDeps


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

#############################################################################
# Build fbthrift
#############################################################################
apt-get install -y libkrb5-dev

git clone https://github.com/facebook/fbthrift
cd fbthrift
git checkout v2018.01.08.00
cd build
cmake -DCMAKE_INSTALL_PREFIX:PATH=/usr ..
make
make install

# cleanup
cd /
rm -fr fbthrift

#############################################################################
# 00 initial packages
#############################################################################
buildDeps=" \
		automake \
		bison \
		curl \
		flex \
		g++ \
		libboost-dev \
		libboost-filesystem-dev \
		libboost-program-options-dev \
		libboost-system-dev \
		libboost-test-dev \
        libboost-thread-dev \
		libevent-dev \
		libssl-dev \
		libtool \
		make \
		cmake \
		pkg-config \
        git
	"
apt-get remove -y $buildDeps

#############################################################################
# 06 folly
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

#############################################################################
# 10 fbthrift
#############################################################################
apt-get install -y libkrb5-dev

#############################################################################
# Final cleanup
#############################################################################
apt-get autoremove -y
apt-get clean
rm /var/lib/apt/lists/*
