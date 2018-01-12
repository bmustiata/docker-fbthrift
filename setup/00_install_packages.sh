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
	"

apt-get update
apt-get install -y $buildDeps

