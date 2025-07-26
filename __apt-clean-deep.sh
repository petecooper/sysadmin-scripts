#!/bin/bash
sudo apt -y autoclean \
&& sudo apt -y clean \
&& sudo apt -y autoremove --purge \
&& dpkg -l linux-{image,headers}-* | \
awk '/^ii/{print $2}' | \
egrep '[0-9]+\.[0-9]+\.[0-9]+' | \
grep -v $(uname -r | \
cut -d- -f-2) | \
xargs sudo apt -y purge