#!/bin/bash
sudo apt -y autoclean \
&& sudo apt -y autoremove --purge \
&& sudo apt -y clean
