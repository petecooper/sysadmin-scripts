#!/bin/bash
sudo apt update -o Acquire::http::AllowRedirect=false && sudo apt -o Acquire::http::AllowRedirect=false -y dist-upgrade && sudo apt -y autoclean && sudo apt -y autoremove --purge && sudo apt -y clean && sudo reboot
