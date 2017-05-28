#!/bin/bash

#Gettext
cd $LFS/sources

tar -xf gettext-0.18.2.tar.gz
cd gettext-0.18.2

cd gettext-tools
EMACS="no" ./configure --prefix=/tools --disable-shared

make -C gnulib-lib
make -C src msgfmt

cp -v src/msgfmt /tools/bin

cd $LFS/sources
rm -rf gettext-0.18.2
