#!/bin/bash

#Gawk
cd $LFS/sources

tar -xf gawk-4.0.2.tar.xz
cd gawk-4.0.2

./configure --prefix=/tools
make -j4
make install

cd $LFS/sources
rm -rf gawk-4.0.2
