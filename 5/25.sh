#!/bin/bash

#M4
cd $LFS/sources

tar -jxf m4-1.4.16.tar.bz2
cd m4-1.4.16

sed -i -e '/gets is a/d' lib/stdio.in.h
./configure --prefix=/tools
make -j4
make install

cd $LFS/sources
rm -rf m4-1.4.16
