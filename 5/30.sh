#!/bin/bash

#Tar
cd $LFS/sources

tar -jxf tar-1.26.tar.bz2
cd tar-1.26

sed -i -e '/gets is a/d' gnu/stdio.in.h
./configure --prefix=/tools
make -j4
make install

cd $LFS/sources
rm -rf tar-1.26
