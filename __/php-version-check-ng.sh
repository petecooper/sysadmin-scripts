#!/bin/bash
if \
    [[ -f /etc/php-php-prefix ]] \
; then \
    php_prefix="$(< /etc/php-php-prefix)" \
    && echo -e '=> `/etc/php-php-prefix` found.' \
    && if \
        [[ -d "$php_prefix" ]] \
    ; then \
        echo -e '=> PHP prefix dir found.' \
        && if \
            [ -d "$php_prefix"/php/8.5/ ] \
        ; then \
            echo -e '=> PHP 8.5 scaffold found.' \
            && if \
                [ -d "$php_prefix"/php/8.5/nts ] \
            ; then \
                echo -e '=> PHP 8.5 NTS scaffold found.' \
                && if \
                    [ -f "$php_prefix"/php/8.5/nts/bin/php ] \
                ; then \
                    echo -e '=> PHP 8.5 NTS `php` found.' \
                    && unset \
                    php_thread_safety_bool \
                    php_thread_safety_status_upper \
                    && php_thread_safety_bool="$("$php_prefix"/php/8.5/nts/bin/php -r 'echo ZEND_THREAD_SAFE;')" \
                    && if \
                        [ "$php_thread_safety_bool" = "1" ] \
                    ; then \
                        php_thread_safety_status_upper="ZTS" \
                    ; else \
                        php_thread_safety_status_upper="NTS" \
                    ; fi \
                    && echo -e '    `php`:' \
                    "$("$php_prefix"/php/8.5/nts/bin/php -r 'echo PHP_VERSION;')" \
                    '(' \
                    "$php_thread_safety_status_upper" \
                    "$("$php_prefix"/php/8.5/nts/bin/php -r 'echo OPENSSL_VERSION_TEXT;')" \
                    ')' \
                ; else \
                    echo -e '=> PHP 8.5 NTS `php` NOT found.' \
                ; fi \
            ; fi \
        ; fi \
    ; else \
        echo -e '=> PHP prefix dir NOT found.' \
    ; fi \
; else \
    echo -e '`=> /etc/php-php-prefix` NOT found.' \
; fi
