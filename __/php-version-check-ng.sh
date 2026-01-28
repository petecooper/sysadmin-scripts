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
        ; fi \
        && if \
            [ -d "$php_prefix"/php/8.5/zts/ ] \
            ; then \
                echo -e '=> PHP 8.5 ZTS scaffold found.' \
        ; fi \
    ; fi \
; else \
    echo -e '`=> /etc/php-php-prefix` NOT found.' \
; fi
