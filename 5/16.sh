#!/bin/bash

#Bzip2
cd $LFS/sources

tar -xf bzip2-1.0.6.tar.gz
cd bzip2-1.0.6

make -j4
make PREFIX=/tools install

cd $LFS/sources
rm -rf bzip2-1.0.6
