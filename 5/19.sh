#!/bin/bash

#File
cd $LFS/sources

tar -xf file-5.13.tar.gz
cd file-5.13

./configure --prefix=/tools
make -j4
make install

cd $LFS/sources
rm -rf file-5.13
