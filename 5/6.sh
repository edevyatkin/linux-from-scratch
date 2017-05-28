#!/bin/bash

#linux api headers
cd $LFS/sources

tar -xf linux-3.8.1.tar.xz
cd linux-3.8.1

make mrproper

make headers_check
make INSTALL_HDR_PATH=dest headers_install
cp -rv dest/include/* /tools/include
