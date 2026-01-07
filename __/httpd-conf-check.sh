#!/bin/bash
if \
[[ -f /etc/nginx/nginx.conf ]] \
; then \
echo -e '\n=> nginx.conf found at `/etc/nginx/nginx.conf`.' \
; fi \
#!/bin/bash
if \
[[ -f /opt/nginx/nginx.conf ]] \
; then \
echo -e '\n=> nginx.conf found at `/opt/nginx/nginx.conf`.' \
; fi \
#!/bin/bash
if \
[[ -f /opt/nginx/nginx/nginx.conf ]] \
; then \
echo -e '\n=> nginx.conf found at `/opt/nginx/nginx/nginx.conf`.' \
; fi

