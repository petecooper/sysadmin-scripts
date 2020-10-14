#!/bin/bash
sudo rm -rf /opt/eff.org/certbot/venv/
sudo rm -rf /opt/certbot/
sudo git clone --depth 1 https://github.com/certbot/certbot /opt/certbot/
sudo /opt/certbot/certbot-auto renew --config-dir /etc/certbot/
sudo nginx -t && sudo systemctl reload nginx
