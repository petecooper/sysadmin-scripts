#!/bin/bash
for fn in `find /mnt/* -printf "%f\n"` \
; do
sudo xfs_growfs "$fn"
done
