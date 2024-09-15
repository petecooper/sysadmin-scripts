#!/bin/bash
if \
[[ -f /etc/php-prefix ]] \
; then \
php_prefix="$(< /etc/php-prefix)" \
&& if \
[ -d "$php_prefix"/php/8.4/ ] || [ -d "$php_prefix"/php/8.4/nts/ ]|| [ -d "$php_prefix"/php/8.4/zts/ ] \
; then \
echo -e '\n=> PHP 8.4 found.' \
&& echo '=> PHP 8.4 NTS `php` checks.' \
&& echo '=> PHP 8.4 NTS `php-fpm` checks.' \
&& echo '=> PHP 8.4 NTS socket checks.' \
&& echo '=> PHP 8.4 ZTS `php` checks.' \
&& echo '=> PHP 8.4 ZTS `php-fpm` checks.' \
&& echo '=> PHP 8.4 ZTS socket checks.' \
&& echo '=> PHP 8.4 legacy `php` checks.' \
&& echo '=> PHP 8.4 legacy `php-fpm` checks.' \
&& echo '=> PHP 8.4 legacy socket checks.' \
; fi \
&& if \
[ -d "$php_prefix"/php/8.3/ ] || [ -d "$php_prefix"/php/8.3/nts/ ]|| [ -d "$php_prefix"/php/8.3/zts/ ] \
; then \
echo -e '\n=> PHP 8.3 found.' \
&& echo '=> PHP 8.3 NTS `php` checks.' \
&& echo '=> PHP 8.3 NTS `php-fpm` checks.' \
&& echo '=> PHP 8.3 NTS socket checks.' \
&& echo '=> PHP 8.3 ZTS `php` checks.' \
&& echo '=> PHP 8.3 ZTS `php-fpm` checks.' \
&& echo '=> PHP 8.3 ZTS socket checks.' \
&& echo '=> PHP 8.3 legacy `php` checks.' \
&& echo '=> PHP 8.3 legacy `php-fpm` checks.' \
&& echo '=> PHP 8.3 legacy socket checks.' \
; fi \
&& if \
[ -d "$php_prefix"/php/8.2/ ] || [ -d "$php_prefix"/php/8.2/nts/ ]|| [ -d "$php_prefix"/php/8.2/zts/ ] \
; then \
echo -e '\n=> PHP 8.2 found.' \
&& echo '=> PHP 8.2 NTS `php` checks.' \
&& echo '=> PHP 8.2 NTS `php-fpm` checks.' \
&& echo '=> PHP 8.2 NTS socket checks.' \
&& echo '=> PHP 8.2 ZTS `php` checks.' \
&& echo '=> PHP 8.2 ZTS `php-fpm` checks.' \
&& echo '=> PHP 8.2 ZTS socket checks.' \
&& echo '=> PHP 8.2 legacy `php` checks.' \
&& echo '=> PHP 8.2 legacy `php-fpm` checks.' \
&& echo '=> PHP 8.2 legacy socket checks.' \
; fi \
&& if \
[ -d "$php_prefix"/php/8.1/ ] || [ -d "$php_prefix"/php/8.1/nts/ ]|| [ -d "$php_prefix"/php/8.1/zts/ ] \
; then \
echo -e '\n=> PHP 8.1 found.' \
&& echo '=> PHP 8.1 NTS `php` checks.' \
&& echo '=> PHP 8.1 NTS `php-fpm` checks.' \
&& echo '=> PHP 8.1 NTS socket checks.' \
&& echo '=> PHP 8.1 ZTS `php` checks.' \
&& echo '=> PHP 8.1 ZTS `php-fpm` checks.' \
&& echo '=> PHP 8.1 ZTS socket checks.' \
&& echo '=> PHP 8.1 legacy `php` checks.' \
&& echo '=> PHP 8.1 legacy `php-fpm` checks.' \
&& echo '=> PHP 8.1 legacy socket checks.' \
; fi \
&& if \
[ -d "$php_prefix"/php/php-src/ ] || [ -d "$php_prefix"/php/php-src/nts/ ]|| [ -d "$php_prefix"/php/php-src/zts/ ] \
; then \
echo -e '\n=> PHP src found.' \
&& echo '=> PHP src NTS `php` checks.' \
&& echo '=> PHP src NTS `php-fpm` checks.' \
&& echo '=> PHP src NTS socket checks.' \
&& echo '=> PHP src ZTS `php` checks.' \
&& echo '=> PHP src ZTS `php-fpm` checks.' \
&& echo '=> PHP src ZTS socket checks.' \
&& echo '=> PHP src legacy `php` checks.' \
&& echo '=> PHP src legacy `php-fpm` checks.' \
&& echo '=> PHP src legacy socket checks.' \
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