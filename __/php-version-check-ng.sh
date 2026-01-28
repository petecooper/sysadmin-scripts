#!/bin/bash
if \
[[ -f /etc/php-php-prefix ]] \
; then \
php_prefix="$(< /etc/php-php-prefix)" \
; else \
echo -e '`/etc/php-php-prefix` NOT found.' \
; fi
