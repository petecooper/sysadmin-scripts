#!/bin/bash
find / \
-xdev \
-type f \
-size +5M \
-exec du -sh {} ';' | \
sort -rh | \
head -n200
