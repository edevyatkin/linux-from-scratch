#!/bin/bash

#binutils
cd $LFS/sources

tar -jxf binutils-2.23.1.tar.bz2
cd binutils-2.23.1

mkdir -v ../binutils-build
cd ../binutils-build

CC=$LFS_TGT-gcc            \
AR=$LFS_TGT-ar             \
RANLIB=$LFS_TGT-ranlib     \
../binutils-2.23.1/configure \
    --prefix=/tools        \
    --disable-nls          \
    --with-lib-path=/tools/lib

make -j4
make install

make -C ld clean
make -C ld LIB_PATH=/usr/lib:/lib
cp -v ld/ld-new /tools/bin
