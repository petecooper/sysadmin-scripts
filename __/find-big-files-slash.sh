#!/bin/bash
find / \
-xdev \
-type f \
-size +10M \
-exec du -sh {} ';' | \
sort -rh | \
head -n100
