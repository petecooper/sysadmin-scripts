#!/bin/bash
sudo apt -oDebug::pkgAcquire::Worker=1 update \
&& sudo apt -oDebug::pkgAcquire::Worker=1 --dry-run -y dist-upgrade
