#!/bin/bash
sudo apt -oDebug::pkgAcquire::Worker=1 -y autoclean \
&& sudo apt -oDebug::pkgAcquire::Worker=1 -y autoremove --purge \
&& sudo apt -oDebug::pkgAcquire::Worker=1 -y clean
