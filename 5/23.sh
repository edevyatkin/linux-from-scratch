#!/bin/bash

#Grep
cd $LFS/sources

tar -xf grep-2.14.tar.xz
cd grep-2.14

./configure --prefix=/tools
make -j4
make install

cd $LFS/sources
rm -rf grep-2.14
