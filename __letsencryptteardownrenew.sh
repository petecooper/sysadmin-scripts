#!/bin/bash
sudo rm -rf /opt/eff.org/certbot/venv/
sudo rm -rf /opt/letsencrypt
sudo git clone --depth 1 https://github.com/letsencrypt/letsencrypt /opt/letsencrypt
sudo /opt/letsencrypt/letsencrypt-auto renew && systemctl reload nginx
