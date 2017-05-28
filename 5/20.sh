#!/bin/bash

#Findutils
cd $LFS/sources

tar -xf findutils-4.4.2.tar.gz
cd findutils-4.4.2

./configure --prefix=/tools
make -j4
make install

cd $LFS/sources
rm -rf findutils-4.4.2
