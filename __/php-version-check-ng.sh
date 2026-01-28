#!/bin/bash
if \
    [[ -f /etc/php-php-prefix ]] \
; then \
    php_prefix="$(< /etc/php-php-prefix)" \
    && echo -e '=> `/etc/php-php-prefix` found.' \
    && if \
        [ -d "$php_prefix"/php/8.5/ ] \
    ; then \
        echo -e '=> PHP 8.5 scaffold found.' \
        && if \
            [ -d "$php_prefix"/php/8.5/nts/ ] \
        ; then \
            echo -e '=> PHP 8.5 NTS scaffold found.' \
            && if \
                [ -f "$php_prefix"/php/8.5/nts/bin/php ] \
            ; then \
                echo -e '=> PHP 8.5 NTS `php` found.' \
            ; else \
                echo -e '=> PHP 8.5 NTS `php` NOT found.' \
            ; fi \
        ; fi \
        && if \
            [ -d "$php_prefix"/php/8.5/zts/ ] \
        ; then \
            echo -e '=> PHP 8.5 ZTS scaffold found.' \
            && if \
                [ -f "$php_prefix"/php/8.5/zts/bin/php ] \
            ; then \
                echo -e '=> PHP 8.5 ZTS `php` found.' \
            ; else \
                echo -e '=> PHP 8.5 ZTS `php` NOT found.' \
            ; fi \
        ; fi \
    ; fi \
; else \
    echo -e '`=> /etc/php-php-prefix` NOT found.' \
; fi
