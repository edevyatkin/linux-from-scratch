#!/bin/bash

#Perl
cd $LFS/sources

tar -jxf perl-5.16.2.tar.bz2
cd perl-5.16.2

patch -Np1 -i ../perl-5.16.2-libc-1.patch
sh Configure -des -Dprefix=/tools
make -j4
cp -v perl cpan/podlators/pod2man /tools/bin
mkdir -pv /tools/lib/perl5/5.16.2
cp -Rv lib/* /tools/lib/perl5/5.16.2

cd $LFS/sources
rm -rf perl-5.16.2
