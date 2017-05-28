#!/bin/bash

#Patch
cd $LFS/sources

tar -xf patch-2.7.1.tar.xz
cd patch-2.7.1

./configure --prefix=/tools
make -j4
make install

cd $LFS/sources
rm -rf patch-2.7.1
