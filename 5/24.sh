#!/bin/bash

#Gzip
cd $LFS/sources

tar -xf gzip-1.5.tar.xz
cd gzip-1.5

./configure --prefix=/tools
make -j4
make install

cd $LFS/sources
rm -rf gzip-1.5
