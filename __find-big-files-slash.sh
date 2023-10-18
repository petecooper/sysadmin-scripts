#!/bin/bash
find / -xdev -type f -size +50M -exec du -sh {} ';' | sort -rh | head -n50
