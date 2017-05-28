#!/bin/bash

LFS_BOOT=/dev/sdb1
LFS_ROOT=/dev/sdb2
LFS_HOME=/dev/sdb3
LFS_SWAP=/dev/sdb4

. export_lfs.sh

umount -v $LFS/boot
umount -v $LFS/home
umount -v $LFS
/sbin/swapoff -v $LFS_SWAP

sleep 1

mount -v -t ext3 $LFS_ROOT $LFS
mount -v -t ext3 $LFS_BOOT $LFS/boot
mount -v -t ext3 $LFS_HOME $LFS/home
/sbin/swapon -v $LFS_SWAP
