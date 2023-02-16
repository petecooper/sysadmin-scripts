#!/bin/bash
for fn in `find /dev/disk/by-id/scsi* -printf "%f\n"` \
; do
sudo resize2fs "$fn"
done
