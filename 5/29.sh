#!/bin/bash

#Sed
cd $LFS/sources

tar -jxf sed-4.2.2.tar.bz2
cd sed-4.2.2

./configure --prefix=/tools
make -j4
make install

cd $LFS/sources
rm -rf sed-4.2.2
