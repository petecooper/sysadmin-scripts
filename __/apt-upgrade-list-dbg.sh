#!/bin/bash
sudo apt -oDebug::pkgAcquire::Worker=1 update \
&& sudo apt -oDebug::pkgAcquire::Worker=1 list --upgradable
