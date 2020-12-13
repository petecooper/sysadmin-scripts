#!/bin/bash
sudo apt update \
&& sudo apt -y full-upgrade \
&& sudo apt -y autoclean \
&& sudo apt -y autoremove --purge \
&& sudo apt -y clean \
&& sudo shutdown -h now
