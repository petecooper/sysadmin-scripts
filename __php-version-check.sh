#!/bin/bash
if \
[[ -f /etc/php-prefix ]] \
; then \
php_prefix="$(< /etc/php-prefix)" \
&& if \
[ -d "$php_prefix"/php/8.5/ ] || [ -d "$php_prefix"/php/8.5/nts/ ]|| [ -d "$php_prefix"/php/8.5/zts/ ] \
; then \
if \
[ -d "$php_prefix"/php/8.5/nts/bin/ ] \
; then \
echo -e '\n=> PHP 8.5 NTS found.' \
&& if \
[ -f "$php_prefix"/php/8.5/nts/bin/php ] \
; then \
php_thread_safety_check="$("$php_prefix"/php/8.5/nts/bin/php -r 'echo ZEND_THREAD_SAFE;')" \
&& if [ "$php_thread_safety_check" = "1" ] ; then php_thread_safety_status="(ZTS;" ; else php_thread_safety_status="(NTS;" ; fi \
&& echo -e '    `php`:' \
"$("$php_prefix"/php/8.5/nts/bin/php -r 'echo PHP_VERSION;')" \
"$php_thread_safety_status" \
"$("$php_prefix"/php/8.5/nts/bin/php -r 'echo OPENSSL_VERSION_TEXT;')"')' \
; else \
echo -e '`php` NOT found.' \
; fi \
&& if \
[ -f "$php_prefix"/php/8.5/nts/sbin/php-fpm ] \
; then \
php_thread_safety_check="$("$php_prefix"/php/8.5/nts/bin/php -r 'echo ZEND_THREAD_SAFE;')" \
&& if [ "$php_thread_safety_check" = "1" ] ; then php_thread_safety_status="(ZTS;" ; else php_thread_safety_status="(NTS;" ; fi \
&& echo -e '`php-fpm`:' \
"$("$php_prefix"/php/8.5/nts/sbin/php-fpm -i | grep "PHP Version" | head -1 | sed 's/.*=> //')" \
"$php_thread_safety_status" \
"$("$php_prefix"/php/8.5/nts/sbin/php-fpm -i | grep "OpenSSL Library Version" | sed 's/.*=> //')"')' \
; else \
echo -e '`php-fpm` NOT found.' \
; fi \
&& echo '=> PHP 8.5 NTS socket checks (todo).' \
; fi \
&& if \
[ -d "$php_prefix"/php/8.5/zts/bin/ ] \
; then \
echo -e '\n=> PHP 8.5 ZTS found.' \
&& if \
[ -f "$php_prefix"/php/8.5/zts/bin/php ] \
; then \
php_thread_safety_check="$("$php_prefix"/php/8.5/zts/bin/php -r 'echo ZEND_THREAD_SAFE;')" \
&& if [ "$php_thread_safety_check" = "1" ] ; then php_thread_safety_status="(ZTS;" ; else php_thread_safety_status="(NTS;" ; fi \
&& echo -e '    `php`:' \
"$("$php_prefix"/php/8.5/zts/bin/php -r 'echo PHP_VERSION;')" \
"$php_thread_safety_status" \
"$("$php_prefix"/php/8.5/zts/bin/php -r 'echo OPENSSL_VERSION_TEXT;')"')' \
; else \
echo -e '`php` NOT found.' \
; fi \
&& if \
[ -f "$php_prefix"/php/8.5/zts/sbin/php-fpm ] \
; then \
php_thread_safety_check="$("$php_prefix"/php/8.5/zts/bin/php -r 'echo ZEND_THREAD_SAFE;')" \
&& if [ "$php_thread_safety_check" = "1" ] ; then php_thread_safety_status="(ZTS;" ; else php_thread_safety_status="(NTS;" ; fi \
&& echo -e '`php-fpm`:' \
"$("$php_prefix"/php/8.5/zts/sbin/php-fpm -i | grep "PHP Version" | head -1 | sed 's/.*=> //')" \
"$php_thread_safety_status" \
"$("$php_prefix"/php/8.5/zts/sbin/php-fpm -i | grep "OpenSSL Library Version" | sed 's/.*=> //')"')' \
; else \
echo -e '`php-fpm` NOT found.' \
; fi \
&& echo '=> PHP 8.5 ZTS socket checks (todo).' \
; fi \
&& if \
[ -d "$php_prefix"/php/8.5/bin/ ] \
; then \
echo -e '\n=> PHP 8.5 found.' \
&& if \
[ -f "$php_prefix"/php/8.5/bin/php ] \
; then \
php_thread_safety_check="$("$php_prefix"/php/8.5/bin/php -r 'echo ZEND_THREAD_SAFE;')" \
&& if [ "$php_thread_safety_check" = "1" ] ; then php_thread_safety_status="(ZTS;" ; else php_thread_safety_status="(NTS;" ; fi \
&& echo -e '    `php`:' \
"$("$php_prefix"/php/8.5/bin/php -r 'echo PHP_VERSION;')" \
"$php_thread_safety_status" \
"$("$php_prefix"/php/8.5/bin/php -r 'echo OPENSSL_VERSION_TEXT;')"')' \
; else \
echo -e '`php` NOT found.' \
; fi \
&& if \
[ -f "$php_prefix"/php/8.5/sbin/php-fpm ] \
; then \
php_thread_safety_check="$("$php_prefix"/php/8.5/bin/php -r 'echo ZEND_THREAD_SAFE;')" \
&& if [ "$php_thread_safety_check" = "1" ] ; then php_thread_safety_status="(ZTS;" ; else php_thread_safety_status="(NTS;" ; fi \
&& echo -e '`php-fpm`:' \
"$("$php_prefix"/php/8.5/sbin/php-fpm -i | grep "PHP Version" | head -1 | sed 's/.*=> //')" \
"$php_thread_safety_status" \
"$("$php_prefix"/php/8.5/sbin/php-fpm -i | grep "OpenSSL Library Version" | sed 's/.*=> //')"')' \
; else \
echo -e '`php-fpm` NOT found.' \
; fi \
&& echo '=> PHP 8.5 socket checks (todo).' \
; fi \
; fi \&& if \
[ -d "$php_prefix"/php/8.4/ ] || [ -d "$php_prefix"/php/8.4/nts/ ]|| [ -d "$php_prefix"/php/8.4/zts/ ] \
; then \
if \
[ -d "$php_prefix"/php/8.4/nts/bin/ ] \
; then \
echo -e '\n=> PHP 8.4 NTS found.' \
&& if \
[ -f "$php_prefix"/php/8.4/nts/bin/php ] \
; then \
php_thread_safety_check="$("$php_prefix"/php/8.4/nts/bin/php -r 'echo ZEND_THREAD_SAFE;')" \
&& if [ "$php_thread_safety_check" = "1" ] ; then php_thread_safety_status="(ZTS;" ; else php_thread_safety_status="(NTS;" ; fi \
&& echo -e '    `php`:' \
"$("$php_prefix"/php/8.4/nts/bin/php -r 'echo PHP_VERSION;')" \
"$php_thread_safety_status" \
"$("$php_prefix"/php/8.4/nts/bin/php -r 'echo OPENSSL_VERSION_TEXT;')"')' \
; else \
echo -e '`php` NOT found.' \
; fi \
&& if \
[ -f "$php_prefix"/php/8.4/nts/sbin/php-fpm ] \
; then \
php_thread_safety_check="$("$php_prefix"/php/8.4/nts/bin/php -r 'echo ZEND_THREAD_SAFE;')" \
&& if [ "$php_thread_safety_check" = "1" ] ; then php_thread_safety_status="(ZTS;" ; else php_thread_safety_status="(NTS;" ; fi \
&& echo -e '`php-fpm`:' \
"$("$php_prefix"/php/8.4/nts/sbin/php-fpm -i | grep "PHP Version" | head -1 | sed 's/.*=> //')" \
"$php_thread_safety_status" \
"$("$php_prefix"/php/8.4/nts/sbin/php-fpm -i | grep "OpenSSL Library Version" | sed 's/.*=> //')"')' \
; else \
echo -e '`php-fpm` NOT found.' \
; fi \
&& echo '=> PHP 8.4 NTS socket checks (todo).' \
; fi \
&& if \
[ -d "$php_prefix"/php/8.4/zts/bin/ ] \
; then \
echo -e '\n=> PHP 8.4 ZTS found.' \
&& if \
[ -f "$php_prefix"/php/8.4/zts/bin/php ] \
; then \
php_thread_safety_check="$("$php_prefix"/php/8.4/zts/bin/php -r 'echo ZEND_THREAD_SAFE;')" \
&& if [ "$php_thread_safety_check" = "1" ] ; then php_thread_safety_status="(ZTS;" ; else php_thread_safety_status="(NTS;" ; fi \
&& echo -e '    `php`:' \
"$("$php_prefix"/php/8.4/zts/bin/php -r 'echo PHP_VERSION;')" \
"$php_thread_safety_status" \
"$("$php_prefix"/php/8.4/zts/bin/php -r 'echo OPENSSL_VERSION_TEXT;')"')' \
; else \
echo -e '`php` NOT found.' \
; fi \
&& if \
[ -f "$php_prefix"/php/8.4/zts/sbin/php-fpm ] \
; then \
php_thread_safety_check="$("$php_prefix"/php/8.4/zts/bin/php -r 'echo ZEND_THREAD_SAFE;')" \
&& if [ "$php_thread_safety_check" = "1" ] ; then php_thread_safety_status="(ZTS;" ; else php_thread_safety_status="(NTS;" ; fi \
&& echo -e '`php-fpm`:' \
"$("$php_prefix"/php/8.4/zts/sbin/php-fpm -i | grep "PHP Version" | head -1 | sed 's/.*=> //')" \
"$php_thread_safety_status" \
"$("$php_prefix"/php/8.4/zts/sbin/php-fpm -i | grep "OpenSSL Library Version" | sed 's/.*=> //')"')' \
; else \
echo -e '`php-fpm` NOT found.' \
; fi \
&& echo '=> PHP 8.4 ZTS socket checks (todo).' \
; fi \
&& if \
[ -d "$php_prefix"/php/8.4/bin/ ] \
; then \
echo -e '\n=> PHP 8.4 found.' \
&& if \
[ -f "$php_prefix"/php/8.4/bin/php ] \
; then \
php_thread_safety_check="$("$php_prefix"/php/8.4/bin/php -r 'echo ZEND_THREAD_SAFE;')" \
&& if [ "$php_thread_safety_check" = "1" ] ; then php_thread_safety_status="(ZTS;" ; else php_thread_safety_status="(NTS;" ; fi \
&& echo -e '    `php`:' \
"$("$php_prefix"/php/8.4/bin/php -r 'echo PHP_VERSION;')" \
"$php_thread_safety_status" \
"$("$php_prefix"/php/8.4/bin/php -r 'echo OPENSSL_VERSION_TEXT;')"')' \
; else \
echo -e '`php` NOT found.' \
; fi \
&& if \
[ -f "$php_prefix"/php/8.4/sbin/php-fpm ] \
; then \
php_thread_safety_check="$("$php_prefix"/php/8.4/bin/php -r 'echo ZEND_THREAD_SAFE;')" \
&& if [ "$php_thread_safety_check" = "1" ] ; then php_thread_safety_status="(ZTS;" ; else php_thread_safety_status="(NTS;" ; fi \
&& echo -e '`php-fpm`:' \
"$("$php_prefix"/php/8.4/sbin/php-fpm -i | grep "PHP Version" | head -1 | sed 's/.*=> //')" \
"$php_thread_safety_status" \
"$("$php_prefix"/php/8.4/sbin/php-fpm -i | grep "OpenSSL Library Version" | sed 's/.*=> //')"')' \
; else \
echo -e '`php-fpm` NOT found.' \
; fi \
&& echo '=> PHP 8.4 socket checks (todo).' \
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
php_thread_safety_check="$("$php_prefix"/php/8.3/nts/bin/php -r 'echo ZEND_THREAD_SAFE;')" \
&& if [ "$php_thread_safety_check" = "1" ] ; then php_thread_safety_status="(ZTS;" ; else php_thread_safety_status="(NTS;" ; fi \
&& echo -e '    `php`:' \
"$("$php_prefix"/php/8.3/nts/bin/php -r 'echo PHP_VERSION;')" \
"$php_thread_safety_status" \
"$("$php_prefix"/php/8.3/nts/bin/php -r 'echo OPENSSL_VERSION_TEXT;')"')' \
; else \
echo -e '`php` NOT found.' \
; fi \
&& if \
[ -f "$php_prefix"/php/8.3/nts/sbin/php-fpm ] \
; then \
php_thread_safety_check="$("$php_prefix"/php/8.3/nts/bin/php -r 'echo ZEND_THREAD_SAFE;')" \
&& if [ "$php_thread_safety_check" = "1" ] ; then php_thread_safety_status="(ZTS;" ; else php_thread_safety_status="(NTS;" ; fi \
&& echo -e '`php-fpm`:' \
"$("$php_prefix"/php/8.3/nts/sbin/php-fpm -i | grep "PHP Version" | head -1 | sed 's/.*=> //')" \
"$php_thread_safety_status" \
"$("$php_prefix"/php/8.3/nts/sbin/php-fpm -i | grep "OpenSSL Library Version" | sed 's/.*=> //')"')' \
; else \
echo -e '`php-fpm` NOT found.' \
; fi \
&& echo '=> PHP 8.3 NTS socket checks (todo).' \
; fi \
&& if \
[ -d "$php_prefix"/php/8.3/zts/bin/ ] \
; then \
echo -e '\n=> PHP 8.3 ZTS found.' \
&& if \
[ -f "$php_prefix"/php/8.3/zts/bin/php ] \
; then \
php_thread_safety_check="$("$php_prefix"/php/8.3/zts/bin/php -r 'echo ZEND_THREAD_SAFE;')" \
&& if [ "$php_thread_safety_check" = "1" ] ; then php_thread_safety_status="(ZTS;" ; else php_thread_safety_status="(NTS;" ; fi \
&& echo -e '    `php`:' \
"$("$php_prefix"/php/8.3/zts/bin/php -r 'echo PHP_VERSION;')" \
"$php_thread_safety_status" \
"$("$php_prefix"/php/8.3/zts/bin/php -r 'echo OPENSSL_VERSION_TEXT;')"')' \
; else \
echo -e '`php` NOT found.' \
; fi \
&& if \
[ -f "$php_prefix"/php/8.3/zts/sbin/php-fpm ] \
; then \
php_thread_safety_check="$("$php_prefix"/php/8.3/zts/bin/php -r 'echo ZEND_THREAD_SAFE;')" \
&& if [ "$php_thread_safety_check" = "1" ] ; then php_thread_safety_status="(ZTS;" ; else php_thread_safety_status="(NTS;" ; fi \
&& echo -e '`php-fpm`:' \
"$("$php_prefix"/php/8.3/zts/sbin/php-fpm -i | grep "PHP Version" | head -1 | sed 's/.*=> //')" \
"$php_thread_safety_status" \
"$("$php_prefix"/php/8.3/zts/sbin/php-fpm -i | grep "OpenSSL Library Version" | sed 's/.*=> //')"')' \
; else \
echo -e '`php-fpm` NOT found.' \
; fi \
&& echo '=> PHP 8.3 ZTS socket checks (todo).' \
; fi \
&& if \
[ -d "$php_prefix"/php/8.3/bin/ ] \
; then \
echo -e '\n=> PHP 8.3 found.' \
&& if \
[ -f "$php_prefix"/php/8.3/bin/php ] \
; then \
php_thread_safety_check="$("$php_prefix"/php/8.3/bin/php -r 'echo ZEND_THREAD_SAFE;')" \
&& if [ "$php_thread_safety_check" = "1" ] ; then php_thread_safety_status="(ZTS;" ; else php_thread_safety_status="(NTS;" ; fi \
&& echo -e '    `php`:' \
"$("$php_prefix"/php/8.3/bin/php -r 'echo PHP_VERSION;')" \
"$php_thread_safety_status" \
"$("$php_prefix"/php/8.3/bin/php -r 'echo OPENSSL_VERSION_TEXT;')"')' \
; else \
echo -e '`php` NOT found.' \
; fi \
&& if \
[ -f "$php_prefix"/php/8.3/sbin/php-fpm ] \
; then \
php_thread_safety_check="$("$php_prefix"/php/8.3/bin/php -r 'echo ZEND_THREAD_SAFE;')" \
&& if [ "$php_thread_safety_check" = "1" ] ; then php_thread_safety_status="(ZTS;" ; else php_thread_safety_status="(NTS;" ; fi \
&& echo -e '`php-fpm`:' \
"$("$php_prefix"/php/8.3/sbin/php-fpm -i | grep "PHP Version" | head -1 | sed 's/.*=> //')" \
"$php_thread_safety_status" \
"$("$php_prefix"/php/8.3/sbin/php-fpm -i | grep "OpenSSL Library Version" | sed 's/.*=> //')"')' \
; else \
echo -e '`php-fpm` NOT found.' \
; fi \
&& echo '=> PHP 8.3 socket checks (todo).' \
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
php_thread_safety_check="$("$php_prefix"/php/8.2/nts/bin/php -r 'echo ZEND_THREAD_SAFE;')" \
&& if [ "$php_thread_safety_check" = "1" ] ; then php_thread_safety_status="(ZTS;" ; else php_thread_safety_status="(NTS;" ; fi \
&& echo -e '    `php`:' \
"$("$php_prefix"/php/8.2/nts/bin/php -r 'echo PHP_VERSION;')" \
"$php_thread_safety_status" \
"$("$php_prefix"/php/8.2/nts/bin/php -r 'echo OPENSSL_VERSION_TEXT;')"')' \
; else \
echo -e '`php` NOT found.' \
; fi \
&& if \
[ -f "$php_prefix"/php/8.2/nts/sbin/php-fpm ] \
; then \
php_thread_safety_check="$("$php_prefix"/php/8.2/nts/bin/php -r 'echo ZEND_THREAD_SAFE;')" \
&& if [ "$php_thread_safety_check" = "1" ] ; then php_thread_safety_status="(ZTS;" ; else php_thread_safety_status="(NTS;" ; fi \
&& echo -e '`php-fpm`:' \
"$("$php_prefix"/php/8.2/nts/sbin/php-fpm -i | grep "PHP Version" | head -1 | sed 's/.*=> //')" \
"$php_thread_safety_status" \
"$("$php_prefix"/php/8.2/nts/sbin/php-fpm -i | grep "OpenSSL Library Version" | sed 's/.*=> //')"')' \
; else \
echo -e '`php-fpm` NOT found.' \
; fi \
&& echo '=> PHP 8.2 NTS socket checks (todo).' \
; fi \
&& if \
[ -d "$php_prefix"/php/8.2/zts/bin/ ] \
; then \
echo -e '\n=> PHP 8.2 ZTS found.' \
&& if \
[ -f "$php_prefix"/php/8.2/zts/bin/php ] \
; then \
php_thread_safety_check="$("$php_prefix"/php/8.2/zts/bin/php -r 'echo ZEND_THREAD_SAFE;')" \
&& if [ "$php_thread_safety_check" = "1" ] ; then php_thread_safety_status="(ZTS;" ; else php_thread_safety_status="(NTS;" ; fi \
&& echo -e '    `php`:' \
"$("$php_prefix"/php/8.2/zts/bin/php -r 'echo PHP_VERSION;')" \
"$php_thread_safety_status" \
"$("$php_prefix"/php/8.2/zts/bin/php -r 'echo OPENSSL_VERSION_TEXT;')"')' \
; else \
echo -e '`php` NOT found.' \
; fi \
&& if \
[ -f "$php_prefix"/php/8.2/zts/sbin/php-fpm ] \
; then \
php_thread_safety_check="$("$php_prefix"/php/8.2/zts/bin/php -r 'echo ZEND_THREAD_SAFE;')" \
&& if [ "$php_thread_safety_check" = "1" ] ; then php_thread_safety_status="(ZTS;" ; else php_thread_safety_status="(NTS;" ; fi \
&& echo -e '`php-fpm`:' \
"$("$php_prefix"/php/8.2/zts/sbin/php-fpm -i | grep "PHP Version" | head -1 | sed 's/.*=> //')" \
"$php_thread_safety_status" \
"$("$php_prefix"/php/8.2/zts/sbin/php-fpm -i | grep "OpenSSL Library Version" | sed 's/.*=> //')"')' \
; else \
echo -e '`php-fpm` NOT found.' \
; fi \
&& echo '=> PHP 8.2 ZTS socket checks (todo).' \
; fi \
&& if \
[ -d "$php_prefix"/php/8.2/bin/ ] \
; then \
echo -e '\n=> PHP 8.2 found.' \
&& if \
[ -f "$php_prefix"/php/8.2/bin/php ] \
; then \
php_thread_safety_check="$("$php_prefix"/php/8.2/bin/php -r 'echo ZEND_THREAD_SAFE;')" \
&& if [ "$php_thread_safety_check" = "1" ] ; then php_thread_safety_status="(ZTS;" ; else php_thread_safety_status="(NTS;" ; fi \
&& echo -e '    `php`:' \
"$("$php_prefix"/php/8.2/bin/php -r 'echo PHP_VERSION;')" \
"$php_thread_safety_status" \
"$("$php_prefix"/php/8.2/bin/php -r 'echo OPENSSL_VERSION_TEXT;')"')' \
; else \
echo -e '`php` NOT found.' \
; fi \
&& if \
[ -f "$php_prefix"/php/8.2/sbin/php-fpm ] \
; then \
php_thread_safety_check="$("$php_prefix"/php/8.2/bin/php -r 'echo ZEND_THREAD_SAFE;')" \
&& if [ "$php_thread_safety_check" = "1" ] ; then php_thread_safety_status="(ZTS;" ; else php_thread_safety_status="(NTS;" ; fi \
&& echo -e '`php-fpm`:' \
"$("$php_prefix"/php/8.2/sbin/php-fpm -i | grep "PHP Version" | head -1 | sed 's/.*=> //')" \
"$php_thread_safety_status" \
"$("$php_prefix"/php/8.2/sbin/php-fpm -i | grep "OpenSSL Library Version" | sed 's/.*=> //')"')' \
; else \
echo -e '`php-fpm` NOT found.' \
; fi \
&& echo '=> PHP 8.2 socket checks (todo).' \
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
php_thread_safety_check="$("$php_prefix"/php/8.1/nts/bin/php -r 'echo ZEND_THREAD_SAFE;')" \
&& if [ "$php_thread_safety_check" = "1" ] ; then php_thread_safety_status="(ZTS;" ; else php_thread_safety_status="(NTS;" ; fi \
&& echo -e '    `php`:' \
"$("$php_prefix"/php/8.1/nts/bin/php -r 'echo PHP_VERSION;')" \
"$php_thread_safety_status" \
"$("$php_prefix"/php/8.1/nts/bin/php -r 'echo OPENSSL_VERSION_TEXT;')"')' \
; else \
echo -e '`php` NOT found.' \
; fi \
&& if \
[ -f "$php_prefix"/php/8.1/nts/sbin/php-fpm ] \
; then \
php_thread_safety_check="$("$php_prefix"/php/8.1/nts/bin/php -r 'echo ZEND_THREAD_SAFE;')" \
&& if [ "$php_thread_safety_check" = "1" ] ; then php_thread_safety_status="(ZTS;" ; else php_thread_safety_status="(NTS;" ; fi \
&& echo -e '`php-fpm`:' \
"$("$php_prefix"/php/8.1/nts/sbin/php-fpm -i | grep "PHP Version" | head -1 | sed 's/.*=> //')" \
"$php_thread_safety_status" \
"$("$php_prefix"/php/8.1/nts/sbin/php-fpm -i | grep "OpenSSL Library Version" | sed 's/.*=> //')"')' \
; else \
echo -e '`php-fpm` NOT found.' \
; fi \
&& echo '=> PHP 8.1 NTS socket checks (todo).' \
; fi \
&& if \
[ -d "$php_prefix"/php/8.1/zts/bin/ ] \
; then \
echo -e '\n=> PHP 8.1 ZTS found.' \
&& if \
[ -f "$php_prefix"/php/8.1/zts/bin/php ] \
; then \
php_thread_safety_check="$("$php_prefix"/php/8.1/zts/bin/php -r 'echo ZEND_THREAD_SAFE;')" \
&& if [ "$php_thread_safety_check" = "1" ] ; then php_thread_safety_status="(ZTS;" ; else php_thread_safety_status="(NTS;" ; fi \
&& echo -e '    `php`:' \
"$("$php_prefix"/php/8.1/zts/bin/php -r 'echo PHP_VERSION;')" \
"$php_thread_safety_status" \
"$("$php_prefix"/php/8.1/zts/bin/php -r 'echo OPENSSL_VERSION_TEXT;')"')' \
; else \
echo -e '`php` NOT found.' \
; fi \
&& if \
[ -f "$php_prefix"/php/8.1/zts/sbin/php-fpm ] \
; then \
php_thread_safety_check="$("$php_prefix"/php/8.1/zts/bin/php -r 'echo ZEND_THREAD_SAFE;')" \
&& if [ "$php_thread_safety_check" = "1" ] ; then php_thread_safety_status="(ZTS;" ; else php_thread_safety_status="(NTS;" ; fi \
&& echo -e '`php-fpm`:' \
"$("$php_prefix"/php/8.1/zts/sbin/php-fpm -i | grep "PHP Version" | head -1 | sed 's/.*=> //')" \
"$php_thread_safety_status" \
"$("$php_prefix"/php/8.1/zts/sbin/php-fpm -i | grep "OpenSSL Library Version" | sed 's/.*=> //')"')' \
; else \
echo -e '`php-fpm` NOT found.' \
; fi \
&& echo '=> PHP 8.1 ZTS socket checks (todo).' \
; fi \
&& if \
[ -d "$php_prefix"/php/8.1/bin/ ] \
; then \
echo -e '\n=> PHP 8.1 found.' \
&& if \
[ -f "$php_prefix"/php/8.1/bin/php ] \
; then \
php_thread_safety_check="$("$php_prefix"/php/8.1/bin/php -r 'echo ZEND_THREAD_SAFE;')" \
&& if [ "$php_thread_safety_check" = "1" ] ; then php_thread_safety_status="(ZTS;" ; else php_thread_safety_status="(NTS;" ; fi \
&& echo -e '    `php`:' \
"$("$php_prefix"/php/8.1/bin/php -r 'echo PHP_VERSION;')" \
"$php_thread_safety_status" \
"$("$php_prefix"/php/8.1/bin/php -r 'echo OPENSSL_VERSION_TEXT;')"')' \
; else \
echo -e '`php` NOT found.' \
; fi \
&& if \
[ -f "$php_prefix"/php/8.1/sbin/php-fpm ] \
; then \
php_thread_safety_check="$("$php_prefix"/php/8.1/bin/php -r 'echo ZEND_THREAD_SAFE;')" \
&& if [ "$php_thread_safety_check" = "1" ] ; then php_thread_safety_status="(ZTS;" ; else php_thread_safety_status="(NTS;" ; fi \
&& echo -e '`php-fpm`:' \
"$("$php_prefix"/php/8.1/sbin/php-fpm -i | grep "PHP Version" | head -1 | sed 's/.*=> //')" \
"$php_thread_safety_status" \
"$("$php_prefix"/php/8.1/sbin/php-fpm -i | grep "OpenSSL Library Version" | sed 's/.*=> //')"')' \
; else \
echo -e '`php-fpm` NOT found.' \
; fi \
&& echo '=> PHP 8.1 socket checks (todo).' \
; fi \
; fi \
; fi