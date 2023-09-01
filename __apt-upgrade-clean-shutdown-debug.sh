#!/bin/bash
sudo apt -oDebug::pkgAcquire::Worker=1 update \
&& sudo apt -oDebug::pkgAcquire::Worker=1 -y dist-upgrade \
&& sudo apt -oDebug::pkgAcquire::Worker=1 -y autoclean \
&& sudo apt -oDebug::pkgAcquire::Worker=1 -y autoremove --purge \
&& sudo apt -oDebug::pkgAcquire::Worker=1 -y clean \
&& sudo shutdown -h now
