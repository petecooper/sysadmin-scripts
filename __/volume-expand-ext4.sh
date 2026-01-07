#!/bin/bash
for fn in $(realpath /dev/disk/by-id/scsi*) \
; do
sudo resize2fs "$fn"
done
