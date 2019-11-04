#!/bin/bash
sudo rm -rf /opt/eff.org/certbot/venv/
sudo rm -rf /opt/letsencrypt
sudo git clone --depth 1 https://github.com/certbot/certbot /opt/letsencrypt
sudo /opt/letsencrypt/certbot-auto renew
sudo nginx -t && systemctl reload nginx
