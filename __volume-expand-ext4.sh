#!/bin/bash
for fn in `find /dev/disk/by-id/scsi* -printf "%f\n"`; do
    echo "wip file is $fn"
done