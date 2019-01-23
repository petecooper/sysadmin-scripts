#!/bin/bash
sudo apt update && sudo apt -y dist-upgrade && sudo apt -y autoclean && sudo apt -y autoremove --purge && sudo apt -y clean
