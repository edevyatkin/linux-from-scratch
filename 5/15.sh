#!/bin/bash

#Bash
cd $LFS/sources

tar -xf bash-4.2.tar.gz
cd bash-4.2

patch -Np1 -i ../bash-4.2-fixes-11.patch
./configure --prefix=/tools --without-bash-malloc
make -j4
make install
ln -sv bash /tools/bin/sh

cd $LFS/sources
rm -rf bash-4.2
