#!/bin/bash
sudo apt-get update && sudo apt-get -y dist-upgrade && sudo apt-get -y autoclean && sudo apt-get -y autoremove --purge && sudo apt-get -y clean && sudo reboot
