#!/bin/bash

#binutils
cd $LFS/sources

tar -jxf binutils-2.23.1.tar.bz2
cd binutils-2.23.1

mkdir -v ../binutils-build
cd ../binutils-build

../binutils-2.23.1/configure     \
    --prefix=/tools            \
    --with-sysroot=$LFS        \
    --with-lib-path=/tools/lib \
    --target=$LFS_TGT          \
    --disable-nls              \
    --disable-werror

make -j4

case $(uname -m) in
  x86_64) mkdir -v /tools/lib && ln -sv lib /tools/lib64 ;;
esac

make install
