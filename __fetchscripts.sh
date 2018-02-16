#!/bin/bash
rm -f ~/apachebounce.sh ~/aptgetdistupgradeclean.sh ~/letsencryptrenew.sh ~/varwwwnginxconfziptohome.sh ~/varwwwziptohome.sh ~/aptgetdistupgradecleanreboot.sh ~/aptgetdistupgradecleanshutdown.sh ~/nginxbounce.sh ~/varwwwzipapacheconftohome.sh
git clone https://github.com/petecooper/sysadmin-scripts.git ~/sysadmin-scripts/ && mv ~/sysadmin-scripts/*.sh ~ && rm -rf ~/sysadmin-scripts
