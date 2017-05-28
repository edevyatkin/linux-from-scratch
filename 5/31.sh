#!/bin/bash

#Texinfo
cd $LFS/sources

tar -xf texinfo-5.0.tar.xz
cd texinfo-5.0

./configure --prefix=/tools
make -j4
make install

cd $LFS/sources
rm -rf texinfo-5.0
