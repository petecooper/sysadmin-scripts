#!/bin/bash
find / \
-xdev \
-type f \
-size +15M \
-exec du -sh {} ';' | \
sort -rh | \
head -n100
