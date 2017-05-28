#!/bin/bash

#Check
cd $LFS/sources

tar -xf check-0.9.9.tar.gz
cd check-0.9.9

./configure --prefix=/tools

make -j4

make install

cd $LFS/sources
rm -rf check-0.9.9
