#!/bin/bash

#Tcl
cd $LFS/sources

tar -xf tcl8.6.0-src.tar.gz
cd tcl8.6.0

cd unix
./configure --prefix=/tools

make -j4

TZ=UTC make test

make install

chmod -v u+w /tools/lib/libtcl8.6.so
make install-private-headers
ln -sv tclsh8.6 /tools/bin/tclsh

cd $LFS/sources
rm -rf tcl8.6.0
