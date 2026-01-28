#!/bin/bash
sudo apt -oDebug::pkgAcquire::Worker=1 update \
&& sudo apt -oDebug::pkgAcquire::Worker=1 -y dist-upgrade \
&& sudo apt -oDebug::pkgAcquire::Worker=1 -y autoclean \
&& sudo apt -oDebug::pkgAcquire::Worker=1 -y clean \
&& sudo apt -oDebug::pkgAcquire::Worker=1 -y autoremove --purge \
&& dpkg -l linux-{image,headers}-* | \
awk '/^ii/{print $2}' | \
grep -E '[0-9]+\.[0-9]+\.[0-9]+' | \
grep -v "$(uname -r | \
cut -d- -f-2)" | \
xargs sudo apt -oDebug::pkgAcquire::Worker=1 -y purge \
&& sudo reboot
