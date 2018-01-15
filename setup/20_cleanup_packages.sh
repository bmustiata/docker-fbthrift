#!/usr/bin/env bash

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
rm -rf /var/lib/apt/lists/*
