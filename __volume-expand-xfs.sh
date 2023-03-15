#!/bin/bash
for fn in `realpath /dev/disk/by-id/scsi*` \
; do
sudo xfs_growfs "$fn"
done
