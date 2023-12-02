#!/bin/bash
find / -xdev -type f -size +20M -exec du -sh {} ';' | sort -rh | head -n50
