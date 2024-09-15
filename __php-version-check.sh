#!/bin/bash
if \
[[ -f /etc/php-prefix ]] \
; then \
php_prefix="$(< /etc/php-prefix)" \
&& if \
[ -d "$php_prefix"/php/8.4/ ] || [ -d "$php_prefix"/php/8.4/nts/ ]|| [ -d "$php_prefix"/php/8.4/zts/ ] \
; then \
echo -e '\n=> PHP 8.4 found.' \
; fi \
&& if \
[ -d "$php_prefix"/php/8.3/ ] || [ -d "$php_prefix"/php/8.3/nts/ ]|| [ -d "$php_prefix"/php/8.3/zts/ ] \
; then \
echo -e '\n=> PHP 8.3 found.' \
; fi \
&& if \
[ -d "$php_prefix"/php/8.2/ ] || [ -d "$php_prefix"/php/8.2/nts/ ]|| [ -d "$php_prefix"/php/8.2/zts/ ] \
; then \
echo -e '\n=> PHP 8.2 found.' \
; fi \
&& if \
[ -d "$php_prefix"/php/8.1/ ] || [ -d "$php_prefix"/php/8.1/nts/ ]|| [ -d "$php_prefix"/php/8.1/zts/ ] \
; then \
echo -e '\n=> PHP 8.2 found.' \
; fi \
&& if \
[ -d "$php_prefix"/php/php-src/ ] || [ -d "$php_prefix"/php/php-src/nts/ ]|| [ -d "$php_prefix"/php/php-src/zts/ ] \
; then \
echo -e '\n=> PHP src found.' \
; fi \
; else \
echo -e '\n=> `/etc/php-prefix` NOT found.' \
; fi \
&& if /usr/local/bin/php -v &> /dev/null \
; then \
echo -e '\n=> `php` symlink set:' \
&& echo "$(/usr/local/bin/php -r 'echo PHP_VERSION;')" \
; else \
echo -e '\n=> `php` symlink NOT set.' \
; fi