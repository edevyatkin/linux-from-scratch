#!/bin/bash

#Make
cd $LFS/sources

tar -jxf make-3.82.tar.bz2
cd make-3.82

./configure --prefix=/tools
make -j4
make install

cd $LFS/sources
rm -rf make-3.82
