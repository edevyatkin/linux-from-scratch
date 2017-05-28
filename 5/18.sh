#!/bin/bash

#Diffutils
cd $LFS/sources

tar -xf diffutils-3.2.tar.gz
cd diffutils-3.2

sed -i -e '/gets is a/d' lib/stdio.in.h
./configure --prefix=/tools
make -j4
make install

cd $LFS/sources
rm -rf diffutils-3.2
