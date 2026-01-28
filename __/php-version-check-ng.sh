#!/bin/bash
if \
[[ -f /etc/php-php-prefix ]] \
; then \
php_prefix="$(< /etc/php-php-prefix)" \
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
php_thread_safety_check="$("$php_prefix"/php/php/8.5/nts/bin/php -r 'echo ZEND_THREAD_SAFE;')" \
&& if \
[ "$php_thread_safety_check" = "1" ] \
; then \
php_thread_safety_status="(ZTS;" \
; else \
php_thread_safety_status="(NTS;" \
; fi \
&& echo -e '    `php`:' \
"$("$php_prefix"/php/php/8.5/nts/bin/php -r 'echo PHP_VERSION;')" \
"$php_thread_safety_status" \
"$("$php_prefix"/php/php/8.5/nts/bin/php -r 'echo OPENSSL_VERSION_TEXT;')"')' \
; else \
echo -e '`php` NOT found.' \
; fi \
&& if \
[ -f "$php_prefix"/php/8.5/nts/sbin/php-fpm ] \
; then \
php_thread_safety_check="$("$php_prefix"/php/php/8.5/nts/bin/php -r 'echo ZEND_THREAD_SAFE;')" \
&& if \
[ "$php_thread_safety_check" = "1" ] \
; then \
php_thread_safety_status="(ZTS;" \
; else \
php_thread_safety_status="(NTS;" \
; fi \
&& echo -e '`php-fpm`:' \
"$("$php_prefix"/php/php/8.5/nts/sbin/php-fpm -i | \
grep "PHP Version" | \
head -1 | \
sed 's/.*=> //')" \
"$php_thread_safety_status" \
"$("$php_prefix"/php/php/8.5/nts/sbin/php-fpm -i | \
grep "OpenSSL Library Version" | \
sed 's/.*=> //')"')' \
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
php_thread_safety_check="$("$php_prefix"/php/php/8.5/zts/bin/php -r 'echo ZEND_THREAD_SAFE;')" \
&& if \
[ "$php_thread_safety_check" = "1" ] \
; then \
php_thread_safety_status="(ZTS;" \
; else \
php_thread_safety_status="(NTS;" \
; fi \
&& echo -e '    `php`:' \
"$("$php_prefix"/php/php/8.5/zts/bin/php -r 'echo PHP_VERSION;')" \
"$php_thread_safety_status" \
"$("$php_prefix"/php/php/8.5/zts/bin/php -r 'echo OPENSSL_VERSION_TEXT;')"')' \
; else \
echo -e '`php` NOT found.' \
; fi \
&& if \
[ -f "$php_prefix"/php/8.5/zts/sbin/php-fpm ] \
; then \
php_thread_safety_check="$("$php_prefix"/php/php/8.5/zts/bin/php -r 'echo ZEND_THREAD_SAFE;')" \
&& if \
[ "$php_thread_safety_check" = "1" ] \
; then \
php_thread_safety_status="(ZTS;" \
; else \
php_thread_safety_status="(NTS;" \
; fi \
&& echo -e '`php-fpm`:' \
"$("$php_prefix"/php/php/8.5/zts/sbin/php-fpm -i | \
grep "PHP Version" | \
head -1 | \
sed 's/.*=> //')" \
"$php_thread_safety_status" \
"$("$php_prefix"/php/php/8.5/zts/sbin/php-fpm -i | \
grep "OpenSSL Library Version" | \
sed 's/.*=> //')"')' \
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
php_thread_safety_check="$("$php_prefix"/php/php/8.5/bin/php -r 'echo ZEND_THREAD_SAFE;')" \
&& if \
[ "$php_thread_safety_check" = "1" ] \
; then \
php_thread_safety_status="(ZTS;" \
; else \
php_thread_safety_status="(NTS;" \
; fi \
&& echo -e '    `php`:' \
"$("$php_prefix"/php/php/8.5/bin/php -r 'echo PHP_VERSION;')" \
"$php_thread_safety_status" \
"$("$php_prefix"/php/php/8.5/bin/php -r 'echo OPENSSL_VERSION_TEXT;')"')' \
; else \
echo -e '`php` NOT found.' \
; fi \
&& if \
[ -f "$php_prefix"/php/8.5/sbin/php-fpm ] \
; then \
php_thread_safety_check="$("$php_prefix"/php/php/8.5/bin/php -r 'echo ZEND_THREAD_SAFE;')" \
&& if \
[ "$php_thread_safety_check" = "1" ] \
; then \
php_thread_safety_status="(ZTS;" \
; else \
php_thread_safety_status="(NTS;" \
; fi \
&& echo -e '`php-fpm`:' \
"$("$php_prefix"/php/php/8.5/sbin/php-fpm -i | \
grep "PHP Version" | \
head -1 | \
sed 's/.*=> //')" \
"$php_thread_safety_status" \
"$("$php_prefix"/php/php/8.5/sbin/php-fpm -i | \
grep "OpenSSL Library Version" | \
sed 's/.*=> //')"')' \
; else \
echo -e '`php-fpm` NOT found.' \
; fi \
&& echo '=> PHP 8.5 socket checks (todo).' \
; fi \
; fi \
; fi