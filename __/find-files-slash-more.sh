#!/bin/bash
echo -e 'Starting `find`...' \
&& find / \
-xdev \
-type f \
-size +10M \
-exec du -sh {} ';' | \
sort -rh | \
head -n80
