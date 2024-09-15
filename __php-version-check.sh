#!/bin/bash
if /usr/local/bin/php -v &> /dev/null \
; then \
echo -e '\n=> `php` symlink set:' \
&& echo "$(/usr/local/bin/php -r 'echo PHP_VERSION;')" \
; else \
echo -e '\n=> `php` symlink NOT set.' \
; fi \
&& if \
[[ -f /etc/php-prefix ]] \
; then \
echo '\n=> `/etc/php-prefix` found.' \
&& php_prefix="$(< /etc/php-prefix)" \
; else \
echo '\n=> `/etc/php-prefix` NOT found.' \
; fi