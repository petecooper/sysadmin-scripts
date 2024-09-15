#!/bin/bash
if \
[[ -f /etc/php-prefix ]] \
; then \
php_prefix="$(< /etc/php-prefix)" \
&& if \
[ -d "$php_prefix"/php/8.4/ ] || [ -d "$php_prefix"/php/8.4/nts/ ]|| [ -d "$php_prefix"/php/8.4/zts/ ] \
; then \
if \
[ -d "$php_prefix"/php/8.4/nts/bin/ ] \
; then \
echo -e '\n=> PHP 8.4 NTS found.' \
&& if \
[ -f "$php_prefix"/php/8.4/nts/bin/php ] \
; then \
echo -e '`php`: ' \
$("$php_prefix"/php/8.4/zts/bin/php -r 'echo PHP_VERSION;') \
$("$php_prefix"/php/8.4/zts/bin/php -r 'echo OPENSSL_VERSION_TEXT;') \
; else \
echo -e '`php` NOT found.' \
; fi \
&& echo '=> PHP 8.4 NTS `php-fpm` checks.' \
&& echo '=> PHP 8.4 NTS socket checks.' \
; fi \
&& if \
[ -d "$php_prefix"/php/8.4/zts/bin/ ] \
; then \
echo -e '\n=> PHP 8.4 ZTS found.' \
&& if \
[ -f "$php_prefix"/php/8.4/zts/bin/php ] \
; then \
echo -e '`php`: ' \
$("$php_prefix"/php/8.4/zts/bin/php -r 'echo PHP_VERSION;') \
$("$php_prefix"/php/8.4/zts/bin/php -r 'echo OPENSSL_VERSION_TEXT;') \
; else \
echo -e '`php` NOT found.' \
; fi \
&& echo '=> PHP 8.4 ZTS `php-fpm` checks.' \
&& echo '=> PHP 8.4 ZTS socket checks.' \
; fi \
&& if \
[ -d "$php_prefix"/php/8.4/bin/ ] \
; then \
echo -e '\n=> PHP 8.4 found.' \
&& if \
[ -f "$php_prefix"/php/8.4/bin/php ] \
; then \
echo -e '`php`: ' \
$("$php_prefix"/php/8.4/bin/php -r 'echo PHP_VERSION;') \
$("$php_prefix"/php/8.4/bin/php -r 'echo OPENSSL_VERSION_TEXT;') \
; else \
echo -e '`php` NOT found.' \
; fi \
&& echo '=> PHP 8.4 `php-fpm` checks.' \
&& echo '=> PHP 8.4 socket checks.' \
; fi \
; fi \
&& if \
[ -d "$php_prefix"/php/8.3/ ] || [ -d "$php_prefix"/php/8.3/nts/ ]|| [ -d "$php_prefix"/php/8.3/zts/ ] \
; then \
if \
[ -d "$php_prefix"/php/8.3/nts/bin/ ] \
; then \
echo -e '\n=> PHP 8.3 NTS found.' \
&& if \
[ -f "$php_prefix"/php/8.3/nts/bin/php ] \
; then \
echo -e '`php`: ' \
$("$php_prefix"/php/8.3/nts/bin/php -r 'echo PHP_VERSION;') \
$("$php_prefix"/php/8.3/nts/bin/php -r 'echo OPENSSL_VERSION_TEXT;') \
; else \
echo -e '`php` NOT found.' \
; fi \
&& echo '=> PHP 8.3 NTS `php-fpm` checks.' \
&& echo '=> PHP 8.3 NTS socket checks.' \
; fi \
&& if \
[ -d "$php_prefix"/php/8.3/zts/bin/ ] \
; then \
echo -e '\n=> PHP 8.3 ZTS found.' \
&& if \
[ -f "$php_prefix"/php/8.3/zts/bin/php ] \
; then \
echo -e '`php`: ' \
$("$php_prefix"/php/8.3/zts/bin/php -r 'echo PHP_VERSION;') \
$("$php_prefix"/php/8.3/zts/bin/php -r 'echo OPENSSL_VERSION_TEXT;') \
; else \
echo -e '`php` NOT found.' \
; fi \
&& echo '=> PHP 8.3 ZTS `php-fpm` checks.' \
&& echo '=> PHP 8.3 ZTS socket checks.' \
; fi \
&& if \
[ -d "$php_prefix"/php/8.3/bin/ ] \
; then \
echo -e '\n=> PHP 8.3 found.' \
&& if \
[ -f "$php_prefix"/php/8.3/bin/php ] \
; then \
echo -e '`php`: ' \
$("$php_prefix"/php/8.3/bin/php -r 'echo PHP_VERSION;') \
$("$php_prefix"/php/8.3/bin/php -r 'echo OPENSSL_VERSION_TEXT;') \
; else \
echo -e '`php` NOT found.' \
; fi \
&& echo '=> PHP 8.3 `php-fpm` checks.' \
&& echo '=> PHP 8.3 socket checks.' \
; fi \
; fi \
&& if \
[ -d "$php_prefix"/php/8.2/ ] || [ -d "$php_prefix"/php/8.2/nts/ ]|| [ -d "$php_prefix"/php/8.2/zts/ ] \
; then \
if \
[ -d "$php_prefix"/php/8.2/nts/bin/ ] \
; then \
echo -e '\n=> PHP 8.2 NTS found.' \
&& if \
[ -f "$php_prefix"/php/8.2/nts/bin/php ] \
; then \
echo -e '`php`: ' \
$("$php_prefix"/php/8.2/nts/bin/php -r 'echo PHP_VERSION;') \
$("$php_prefix"/php/8.2/nts/bin/php -r 'echo OPENSSL_VERSION_TEXT;') \
; else \
echo -e '`php` NOT found.' \
; fi \
&& echo '=> PHP 8.2 NTS `php-fpm` checks.' \
&& echo '=> PHP 8.2 NTS socket checks.' \
; fi \
&& if \
[ -d "$php_prefix"/php/8.2/zts/bin/ ] \
; then \
echo -e '\n=> PHP 8.2 ZTS found.' \
&& if \
[ -f "$php_prefix"/php/8.2/zts/bin/php ] \
; then \
echo -e '`php`: ' \
$("$php_prefix"/php/8.2/zts/bin/php -r 'echo PHP_VERSION;') \
$("$php_prefix"/php/8.2/zts/bin/php -r 'echo OPENSSL_VERSION_TEXT;') \
; else \
echo -e '`php` NOT found.' \
; fi \
&& echo '=> PHP 8.2 ZTS `php-fpm` checks.' \
&& echo '=> PHP 8.2 ZTS socket checks.' \
; fi \
&& if \
[ -d "$php_prefix"/php/8.2/bin/ ] \
; then \
echo -e '\n=> PHP 8.2 found.' \
&& if \
[ -f "$php_prefix"/php/8.2/bin/php ] \
; then \
echo -e '`php`: ' \
$("$php_prefix"/php/8.2/bin/php -r 'echo PHP_VERSION;') \
$("$php_prefix"/php/8.2/bin/php -r 'echo OPENSSL_VERSION_TEXT;') \
; else \
echo -e '`php` NOT found.' \
; fi \
&& echo '=> PHP 8.2 `php-fpm` checks.' \
&& echo '=> PHP 8.2 socket checks.' \
; fi \
; fi \
&& if \
[ -d "$php_prefix"/php/8.1/ ] || [ -d "$php_prefix"/php/8.1/nts/ ]|| [ -d "$php_prefix"/php/8.1/zts/ ] \
; then \
if \
[ -d "$php_prefix"/php/8.1/nts/bin/ ] \
; then \
echo -e '\n=> PHP 8.1 NTS found.' \
&& if \
[ -f "$php_prefix"/php/8.1/nts/bin/php ] \
; then \
echo -e '`php`: ' \
$("$php_prefix"/php/8.1/nts/bin/php -r 'echo PHP_VERSION;') \
$("$php_prefix"/php/8.1/nts/bin/php -r 'echo OPENSSL_VERSION_TEXT;') \
; else \
echo -e '`php` NOT found.' \
; fi \
&& echo '=> PHP 8.1 NTS `php-fpm` checks.' \
&& echo '=> PHP 8.1 NTS socket checks.' \
; fi \
&& if \
[ -d "$php_prefix"/php/8.1/zts/bin/ ] \
; then \
echo -e '\n=> PHP 8.1 ZTS found.' \
&& if \
[ -f "$php_prefix"/php/8.1/zts/bin/php ] \
; then \
echo -e '`php`: ' \
$("$php_prefix"/php/8.1/zts/bin/php -r 'echo PHP_VERSION;') \
$("$php_prefix"/php/8.1/zts/bin/php -r 'echo OPENSSL_VERSION_TEXT;') \
; else \
echo -e '`php` NOT found.' \
; fi \
&& echo '=> PHP 8.1 ZTS `php-fpm` checks.' \
&& echo '=> PHP 8.1 ZTS socket checks.' \
; fi \
&& if \
[ -d "$php_prefix"/php/8.1/bin/ ] \
; then \
echo -e '\n=> PHP 8.1 found.' \
&& if \
[ -f "$php_prefix"/php/8.1/bin/php ] \
; then \
echo -e '`php`: ' \
$("$php_prefix"/php/8.1/bin/php -r 'echo PHP_VERSION;') \
$("$php_prefix"/php/8.1/bin/php -r 'echo OPENSSL_VERSION_TEXT;') \
; else \
echo -e '`php` NOT found.' \
; fi \
&& echo '=> PHP 8.1 `php-fpm` checks.' \
&& echo '=> PHP 8.1 socket checks.' \
; fi \
; fi \
&& if \
[ -d "$php_prefix"/php/php-src/ ] || [ -d "$php_prefix"/php/php-src/nts/ ]|| [ -d "$php_prefix"/php/php-src/zts/ ] \
; then \
if \
[ -d "$php_prefix"/php/php-src/nts/bin/ ] \
; then \
echo -e '\n=> PHP src NTS found.' \
&& if \
[ -f "$php_prefix"/php/php-src/nts/bin/php ] \
; then \
echo -e '`php`: ' \
$("$php_prefix"/php/php-src/nts/bin/php -r 'echo PHP_VERSION;') \
$("$php_prefix"/php/php-src/nts/bin/php -r 'echo OPENSSL_VERSION_TEXT;') \
; else \
echo -e '`php` NOT found.' \
; fi \
&& echo '=> PHP src NTS `php-fpm` checks.' \
&& echo '=> PHP src NTS socket checks.' \
; fi \
&& if \
[ -d "$php_prefix"/php/php-src/zts/bin/ ] \
; then \
echo -e '\n=> PHP src ZTS found.' \
&& if \
[ -f "$php_prefix"/php/php-src/zts/bin/php ] \
; then \
echo -e '`php`: ' \
$("$php_prefix"/php/php-src/zts/bin/php -r 'echo PHP_VERSION;') \
$("$php_prefix"/php/php-src/zts/bin/php -r 'echo OPENSSL_VERSION_TEXT;') \
; else \
echo -e '`php` NOT found.' \
; fi \
&& echo '=> PHP src ZTS `php-fpm` checks.' \
&& echo '=> PHP src ZTS socket checks.' \
; fi \
&& if \
[ -d "$php_prefix"/php/php-src/bin/ ] \
; then \
echo -e '\n=> PHP src found.' \
&& if \
[ -f "$php_prefix"/php/php-src/bin/php ] \
; then \
echo -e '`php`: ' \
$("$php_prefix"/php/php-src/bin/php -r 'echo PHP_VERSION;') \
$("$php_prefix"/php/php-src/bin/php -r 'echo OPENSSL_VERSION_TEXT;') \
; else \
echo -e '`php` NOT found.' \
; fi \
&& echo '=> PHP src `php-fpm` checks.' \
&& echo '=> PHP src socket checks.' \
; fi \
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