#!/bin/bash
if [ -f "/usr/bin/duf" ] ; then
    duf --only local --only-fs ext4 --output mountpoint,size,used,avail,usage
fi
