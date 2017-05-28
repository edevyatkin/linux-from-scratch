#!/bin/bash

#DejaGNU
cd $LFS/sources

tar -xf dejagnu-1.5.tar.gz
cd dejagnu-1.5

./configure --prefix=/tools

make install

make check

cd $LFS/sources
rm -rf dejagnu-1.5
