#!/bin/bash
find . \
-maxdepth 1 \
-type f \
-exec du -hs {} ';'