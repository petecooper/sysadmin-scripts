#!/bin/bash
if [ -f "/usr/bin/duf" ] ; then
    duf --only local --only-fs ext4,xfs --output mountpoint,size,used,avail,usage --width 115
fi
