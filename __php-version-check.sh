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
echo -e '\n=> `/etc/php-prefix` found.' \
&& php_prefix="$(< /etc/php-prefix)" \
; else \
echo -e '\n=> `/etc/php-prefix` NOT found.' \
; fi \
&& echo 'PHP 8.4 checks...' \
&& if \
[ -d "$php_prefix"/php/8.4/ ] || [ -d "$php_prefix"/php/8.4/nts/ ]|| [ -d "$php_prefix"/php/8.4/zts/ ] \
; then \
echo 'PHP 8.4 found.' \
; fi \
&& echo 'PHP 8.3 checks...' \
&& if \
[ -d "$php_prefix"/php/8.3/ ] || [ -d "$php_prefix"/php/8.3/nts/ ]|| [ -d "$php_prefix"/php/8.4/zts/ ] \
; then \
echo 'PHP 8.3 found.' \
; fi \
&& echo 'PHP 8.2 checks...' \
&& if \
[ -d "$php_prefix"/php/8.2/ ] || [ -d "$php_prefix"/php/8.4/nts/ ]|| [ -d "$php_prefix"/php/8.4/zts/ ] \
; then \
echo 'PHP 8.2 found.' \
; fi \
&& echo 'PHP 8.1 checks...' \
&& if \
[ -d "$php_prefix"/php/8.1/ ] || [ -d "$php_prefix"/php/8.4/nts/ ]|| [ -d "$php_prefix"/php/8.4/zts/ ] \
; then \
echo 'PHP 8.2 found.' \
; fi \
&& echo 'PHP src checks...' \
&& if \
[ -d "$php_prefix"/php/php-src/ ] || [ -d "$php_prefix"/php/php-src/nts/ ]|| [ -d "$php_prefix"/php/php-src/zts/ ] \
; then \
echo 'PHP src found.' \
; fi
