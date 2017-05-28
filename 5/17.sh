#!/bin/bash

#Coreutils
cd $LFS/sources

tar -xf coreutils-8.21.tar.xz
cd coreutils-8.21

./configure --prefix=/tools --enable-install-program=hostname
make -j4
make install

cd $LFS/sources
rm -rf coreutils-8.21
