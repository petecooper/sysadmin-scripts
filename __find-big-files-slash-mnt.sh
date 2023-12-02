#!/bin/bash
find /mnt -xdev -type f -size +20M -exec du -sh {} ';' | sort -rh | head -n50
