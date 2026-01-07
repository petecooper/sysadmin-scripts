#!/bin/bash
if \
[ -f "/opt/certbot/certbot" ] \
; then
sudo /opt/certbot/certbot \
renew \
--config-dir \
/etc/certbot/ \
&& exit \
; fi \
&& if \
[ -f "/usr/bin/certbot" ] \
; then
sudo /usr/bin/certbot \
renew \
--config-dir \
/etc/certbot/ \
&& exit \
; fi
