#!/bin/bash

#Ncurses
cd $LFS/sources

tar -xf ncurses-5.9.tar.gz
cd ncurses-5.9

./configure --prefix=/tools --with-shared \
    --without-debug --without-ada --enable-overwrite

make -j4

make install

cd $LFS/sources
rm -rf ncurses-5.9
