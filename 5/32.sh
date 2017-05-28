#!/bin/bash

#Xz
cd $LFS/sources

tar -xf xz-5.0.4.tar.xz
cd xz-5.0.4

./configure --prefix=/tools
make -j4
make install

cd $LFS/sources
rm -rf xz-5.0.4
