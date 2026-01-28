#!/bin/bash
if \
    [[ -f /etc/php-php-prefix ]] \
; then \
    php_prefix="$(< /etc/php-php-prefix)" \
    && if \
        [[ -d "$php_prefix" ]] \
    ; then \
        if \
            [ -d "$php_prefix"/php/8.5/ ] \
        ; then \
            echo -e '=>    PHP: 8.5' \
            && if \
                [ -d "$php_prefix"/php/8.5/nts ] \
            ; then \
                echo -e '=>    PHP: 8.5 NTS' \
                && if \
                    [ -f "$php_prefix"/php/8.5/nts/bin/php ] \
                ; then \
                    unset \
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
                    '('"$php_thread_safety_status_upper"'; '"$("$php_prefix"/php/8.5/nts/bin/php -r 'echo OPENSSL_VERSION_TEXT;')"')' \
                    && unset \
                    php_thread_safety_bool \
                    php_thread_safety_status_upper \
                ; else \
                    echo -e '=> PHP 8.5 NTS scaffold found; `php` NOT found.' \
                ; fi \
                && if \
                    [ -f "$php_prefix"/php/8.5/nts/sbin/php-fpm ] \
                ; then \
                    echo -e '`php-fpm`:' \
                    "$("$php_prefix"/php/8.5/nts/sbin/php-fpm -i | \
                    grep "PHP Version" | \
                    head -1 | \
                    sed 's/.*=> //')" \
                    '     ('"$("$php_prefix"/php/8.5/nts/sbin/php-fpm -i | \
                    grep "OpenSSL Library Version" | \
                    sed 's/.*=> //')"')' \
                    && if \
                        [ -f /run/php/php/8.5/nts/php-php-fpm85nts.pid ] \
                    ; then \
                        echo -e '`php-fpm`: .pid found.' \
                    ; else \
                        echo -e '`php-fpm`: .pid NOT found.' \
                    ; fi \
                    && if \
                        [ -S /run/php/php/8.5/nts/php-php-fpm85nts.sock ] \
                    ; then \
                        echo -e '`php-fpm`: .sock found.' \
                    ; else \
                        echo -e '`php-fpm`: .sock NOT found.' \
                    ; fi \
                ; else \
                    echo -e '=> PHP 8.5 NTS scaffold found; `php-fpm` NOT found.' \
                ; fi \
            ; fi \
            && if \
                [ -d "$php_prefix"/php/8.5/zts ] \
            ; then \
                echo -e '=>    PHP: 8.5 ZTS' \
                && if \
                    [ -f "$php_prefix"/php/8.5/zts/bin/php ] \
                ; then \
                    unset \
                    php_thread_safety_bool \
                    php_thread_safety_status_upper \
                    && php_thread_safety_bool="$("$php_prefix"/php/8.5/zts/bin/php -r 'echo ZEND_THREAD_SAFE;')" \
                    && if \
                        [ "$php_thread_safety_bool" = "1" ] \
                    ; then \
                        php_thread_safety_status_upper="ZTS" \
                    ; else \
                        php_thread_safety_status_upper="NTS" \
                    ; fi \
                    && echo -e '    `php`:' \
                    "$("$php_prefix"/php/8.5/zts/bin/php -r 'echo PHP_VERSION;')" \
                    '('"$php_thread_safety_status_upper"'; '"$("$php_prefix"/php/8.5/zts/bin/php -r 'echo OPENSSL_VERSION_TEXT;')"')' \
                    && unset \
                    php_thread_safety_bool \
                    php_thread_safety_status_upper \
                ; else \
                    echo -e '=> PHP 8.5 NTS scaffold found; `php` NOT found.' \
                ; fi \
                && if \
                    [ -f "$php_prefix"/php/8.5/zts/sbin/php-fpm ] \
                ; then \
                    echo -e '`php-fpm`:' \
                    "$("$php_prefix"/php/8.5/zts/sbin/php-fpm -i | \
                    grep "PHP Version" | \
                    head -1 | \
                    sed 's/.*=> //')" \
                    '     ('"$("$php_prefix"/php/8.5/zts/sbin/php-fpm -i | \
                    grep "OpenSSL Library Version" | \
                    sed 's/.*=> //')"')' \
                    && if \
                        [ -f /run/php/php/8.5/zts/php-php-fpm85nts.pid ] \
                    ; then \
                        echo -e '`php-fpm`: .pid found.' \
                    ; else \
                        echo -e '`php-fpm`: .pid NOT found.' \
                    ; fi \
                    && if \
                        [ -S /run/php/php/8.5/zts/php-php-fpm85nts.sock ] \
                    ; then \
                        echo -e '`php-fpm`: .sock found.' \
                    ; else \
                        echo -e '`php-fpm`: .sock NOT found.' \
                    ; fi \
                ; else \
                    echo -e '=> PHP 8.5 NTS scaffold found; `php-fpm` NOT found.' \
                ; fi \
            ; fi \
        ; fi \
        if \
            [ -d "$php_prefix"/php/8.4/ ] \
        ; then \
            echo -e '=>    PHP: 8.4' \
            && if \
                [ -d "$php_prefix"/php/8.4/nts ] \
            ; then \
                echo -e '=>    PHP: 8.4 NTS' \
                && if \
                    [ -f "$php_prefix"/php/8.4/nts/bin/php ] \
                ; then \
                    unset \
                    php_thread_safety_bool \
                    php_thread_safety_status_upper \
                    && php_thread_safety_bool="$("$php_prefix"/php/8.4/nts/bin/php -r 'echo ZEND_THREAD_SAFE;')" \
                    && if \
                        [ "$php_thread_safety_bool" = "1" ] \
                    ; then \
                        php_thread_safety_status_upper="ZTS" \
                    ; else \
                        php_thread_safety_status_upper="NTS" \
                    ; fi \
                    && echo -e '    `php`:' \
                    "$("$php_prefix"/php/8.4/nts/bin/php -r 'echo PHP_VERSION;')" \
                    '('"$php_thread_safety_status_upper"'; '"$("$php_prefix"/php/8.4/nts/bin/php -r 'echo OPENSSL_VERSION_TEXT;')"')' \
                    && unset \
                    php_thread_safety_bool \
                    php_thread_safety_status_upper \
                ; else \
                    echo -e '=> PHP 8.4 NTS scaffold found; `php` NOT found.' \
                ; fi \
                && if \
                    [ -f "$php_prefix"/php/8.4/nts/sbin/php-fpm ] \
                ; then \
                    echo -e '`php-fpm`:' \
                    "$("$php_prefix"/php/8.4/nts/sbin/php-fpm -i | \
                    grep "PHP Version" | \
                    head -1 | \
                    sed 's/.*=> //')" \
                    '     ('"$("$php_prefix"/php/8.4/nts/sbin/php-fpm -i | \
                    grep "OpenSSL Library Version" | \
                    sed 's/.*=> //')"')' \
                    && if \
                        [ -f /run/php/php/8.4/nts/php-php-fpm84nts.pid ] \
                    ; then \
                        echo -e '`php-fpm`: .pid found.' \
                    ; else \
                        echo -e '`php-fpm`: .pid NOT found.' \
                    ; fi \
                    && if \
                        [ -S /run/php/php/8.4/nts/php-php-fpm84nts.sock ] \
                    ; then \
                        echo -e '`php-fpm`: .sock found.' \
                    ; else \
                        echo -e '`php-fpm`: .sock NOT found.' \
                    ; fi \
                ; else \
                    echo -e '=> PHP 8.4 NTS scaffold found; `php-fpm` NOT found.' \
                ; fi \
            ; fi \
            && if \
                [ -d "$php_prefix"/php/8.4/zts ] \
            ; then \
                echo -e '=>    PHP: 8.4 ZTS' \
                && if \
                    [ -f "$php_prefix"/php/8.4/zts/bin/php ] \
                ; then \
                    unset \
                    php_thread_safety_bool \
                    php_thread_safety_status_upper \
                    && php_thread_safety_bool="$("$php_prefix"/php/8.4/zts/bin/php -r 'echo ZEND_THREAD_SAFE;')" \
                    && if \
                        [ "$php_thread_safety_bool" = "1" ] \
                    ; then \
                        php_thread_safety_status_upper="ZTS" \
                    ; else \
                        php_thread_safety_status_upper="NTS" \
                    ; fi \
                    && echo -e '    `php`:' \
                    "$("$php_prefix"/php/8.4/zts/bin/php -r 'echo PHP_VERSION;')" \
                    '('"$php_thread_safety_status_upper"'; '"$("$php_prefix"/php/8.4/zts/bin/php -r 'echo OPENSSL_VERSION_TEXT;')"')' \
                    && unset \
                    php_thread_safety_bool \
                    php_thread_safety_status_upper \
                ; else \
                    echo -e '=> PHP 8.4 NTS scaffold found; `php` NOT found.' \
                ; fi \
                && if \
                    [ -f "$php_prefix"/php/8.4/zts/sbin/php-fpm ] \
                ; then \
                    echo -e '`php-fpm`:' \
                    "$("$php_prefix"/php/8.4/zts/sbin/php-fpm -i | \
                    grep "PHP Version" | \
                    head -1 | \
                    sed 's/.*=> //')" \
                    '     ('"$("$php_prefix"/php/8.4/zts/sbin/php-fpm -i | \
                    grep "OpenSSL Library Version" | \
                    sed 's/.*=> //')"')' \
                    && if \
                        [ -f /run/php/php/8.4/zts/php-php-fpm84nts.pid ] \
                    ; then \
                        echo -e '`php-fpm`: .pid found.' \
                    ; else \
                        echo -e '`php-fpm`: .pid NOT found.' \
                    ; fi \
                    && if \
                        [ -S /run/php/php/8.4/zts/php-php-fpm84nts.sock ] \
                    ; then \
                        echo -e '`php-fpm`: .sock found.' \
                    ; else \
                        echo -e '`php-fpm`: .sock NOT found.' \
                    ; fi \
                ; else \
                    echo -e '=> PHP 8.4 NTS scaffold found; `php-fpm` NOT found.' \
                ; fi \
            ; fi \
        ; fi \
        if \
            [ -d "$php_prefix"/php/8.3/ ] \
        ; then \
            echo -e '=>    PHP: 8.3' \
            && if \
                [ -d "$php_prefix"/php/8.3/nts ] \
            ; then \
                echo -e '=>    PHP: 8.3 NTS' \
                && if \
                    [ -f "$php_prefix"/php/8.3/nts/bin/php ] \
                ; then \
                    unset \
                    php_thread_safety_bool \
                    php_thread_safety_status_upper \
                    && php_thread_safety_bool="$("$php_prefix"/php/8.3/nts/bin/php -r 'echo ZEND_THREAD_SAFE;')" \
                    && if \
                        [ "$php_thread_safety_bool" = "1" ] \
                    ; then \
                        php_thread_safety_status_upper="ZTS" \
                    ; else \
                        php_thread_safety_status_upper="NTS" \
                    ; fi \
                    && echo -e '    `php`:' \
                    "$("$php_prefix"/php/8.3/nts/bin/php -r 'echo PHP_VERSION;')" \
                    '('"$php_thread_safety_status_upper"'; '"$("$php_prefix"/php/8.3/nts/bin/php -r 'echo OPENSSL_VERSION_TEXT;')"')' \
                    && unset \
                    php_thread_safety_bool \
                    php_thread_safety_status_upper \
                ; else \
                    echo -e '=> PHP 8.3 NTS scaffold found; `php` NOT found.' \
                ; fi \
                && if \
                    [ -f "$php_prefix"/php/8.3/nts/sbin/php-fpm ] \
                ; then \
                    echo -e '`php-fpm`:' \
                    "$("$php_prefix"/php/8.3/nts/sbin/php-fpm -i | \
                    grep "PHP Version" | \
                    head -1 | \
                    sed 's/.*=> //')" \
                    '     ('"$("$php_prefix"/php/8.3/nts/sbin/php-fpm -i | \
                    grep "OpenSSL Library Version" | \
                    sed 's/.*=> //')"')' \
                    && if \
                        [ -f /run/php/php/8.3/nts/php-php-fpm83nts.pid ] \
                    ; then \
                        echo -e '`php-fpm`: .pid found.' \
                    ; else \
                        echo -e '`php-fpm`: .pid NOT found.' \
                    ; fi \
                    && if \
                        [ -S /run/php/php/8.3/nts/php-php-fpm83nts.sock ] \
                    ; then \
                        echo -e '`php-fpm`: .sock found.' \
                    ; else \
                        echo -e '`php-fpm`: .sock NOT found.' \
                    ; fi \
                ; else \
                    echo -e '=> PHP 8.3 NTS scaffold found; `php-fpm` NOT found.' \
                ; fi \
            ; fi \
            && if \
                [ -d "$php_prefix"/php/8.3/zts ] \
            ; then \
                echo -e '=>    PHP: 8.3 ZTS' \
                && if \
                    [ -f "$php_prefix"/php/8.3/zts/bin/php ] \
                ; then \
                    unset \
                    php_thread_safety_bool \
                    php_thread_safety_status_upper \
                    && php_thread_safety_bool="$("$php_prefix"/php/8.3/zts/bin/php -r 'echo ZEND_THREAD_SAFE;')" \
                    && if \
                        [ "$php_thread_safety_bool" = "1" ] \
                    ; then \
                        php_thread_safety_status_upper="ZTS" \
                    ; else \
                        php_thread_safety_status_upper="NTS" \
                    ; fi \
                    && echo -e '    `php`:' \
                    "$("$php_prefix"/php/8.3/zts/bin/php -r 'echo PHP_VERSION;')" \
                    '('"$php_thread_safety_status_upper"'; '"$("$php_prefix"/php/8.3/zts/bin/php -r 'echo OPENSSL_VERSION_TEXT;')"')' \
                    && unset \
                    php_thread_safety_bool \
                    php_thread_safety_status_upper \
                ; else \
                    echo -e '=> PHP 8.3 NTS scaffold found; `php` NOT found.' \
                ; fi \
                && if \
                    [ -f "$php_prefix"/php/8.3/zts/sbin/php-fpm ] \
                ; then \
                    echo -e '`php-fpm`:' \
                    "$("$php_prefix"/php/8.3/zts/sbin/php-fpm -i | \
                    grep "PHP Version" | \
                    head -1 | \
                    sed 's/.*=> //')" \
                    '     ('"$("$php_prefix"/php/8.3/zts/sbin/php-fpm -i | \
                    grep "OpenSSL Library Version" | \
                    sed 's/.*=> //')"')' \
                    && if \
                        [ -f /run/php/php/8.3/zts/php-php-fpm83nts.pid ] \
                    ; then \
                        echo -e '`php-fpm`: .pid found.' \
                    ; else \
                        echo -e '`php-fpm`: .pid NOT found.' \
                    ; fi \
                    && if \
                        [ -S /run/php/php/8.3/zts/php-php-fpm83nts.sock ] \
                    ; then \
                        echo -e '`php-fpm`: .sock found.' \
                    ; else \
                        echo -e '`php-fpm`: .sock NOT found.' \
                    ; fi \
                ; else \
                    echo -e '=> PHP 8.3 NTS scaffold found; `php-fpm` NOT found.' \
                ; fi \
            ; fi \
        ; fi \
        if \
            [ -d "$php_prefix"/php/8.2/ ] \
        ; then \
            echo -e '=>    PHP: 8.2' \
            && if \
                [ -d "$php_prefix"/php/8.2/nts ] \
            ; then \
                echo -e '=>    PHP: 8.2 NTS' \
                && if \
                    [ -f "$php_prefix"/php/8.2/nts/bin/php ] \
                ; then \
                    unset \
                    php_thread_safety_bool \
                    php_thread_safety_status_upper \
                    && php_thread_safety_bool="$("$php_prefix"/php/8.2/nts/bin/php -r 'echo ZEND_THREAD_SAFE;')" \
                    && if \
                        [ "$php_thread_safety_bool" = "1" ] \
                    ; then \
                        php_thread_safety_status_upper="ZTS" \
                    ; else \
                        php_thread_safety_status_upper="NTS" \
                    ; fi \
                    && echo -e '    `php`:' \
                    "$("$php_prefix"/php/8.2/nts/bin/php -r 'echo PHP_VERSION;')" \
                    '('"$php_thread_safety_status_upper"'; '"$("$php_prefix"/php/8.2/nts/bin/php -r 'echo OPENSSL_VERSION_TEXT;')"')' \
                    && unset \
                    php_thread_safety_bool \
                    php_thread_safety_status_upper \
                ; else \
                    echo -e '=> PHP 8.2 NTS scaffold found; `php` NOT found.' \
                ; fi \
                && if \
                    [ -f "$php_prefix"/php/8.2/nts/sbin/php-fpm ] \
                ; then \
                    echo -e '`php-fpm`:' \
                    "$("$php_prefix"/php/8.2/nts/sbin/php-fpm -i | \
                    grep "PHP Version" | \
                    head -1 | \
                    sed 's/.*=> //')" \
                    '     ('"$("$php_prefix"/php/8.2/nts/sbin/php-fpm -i | \
                    grep "OpenSSL Library Version" | \
                    sed 's/.*=> //')"')' \
                    && if \
                        [ -f /run/php/php/8.2/nts/php-php-fpm82nts.pid ] \
                    ; then \
                        echo -e '`php-fpm`: .pid found.' \
                    ; else \
                        echo -e '`php-fpm`: .pid NOT found.' \
                    ; fi \
                    && if \
                        [ -S /run/php/php/8.2/nts/php-php-fpm82nts.sock ] \
                    ; then \
                        echo -e '`php-fpm`: .sock found.' \
                    ; else \
                        echo -e '`php-fpm`: .sock NOT found.' \
                    ; fi \
                ; else \
                    echo -e '=> PHP 8.2 NTS scaffold found; `php-fpm` NOT found.' \
                ; fi \
            ; fi \
            && if \
                [ -d "$php_prefix"/php/8.2/zts ] \
            ; then \
                echo -e '=>    PHP: 8.2 ZTS' \
                && if \
                    [ -f "$php_prefix"/php/8.2/zts/bin/php ] \
                ; then \
                    unset \
                    php_thread_safety_bool \
                    php_thread_safety_status_upper \
                    && php_thread_safety_bool="$("$php_prefix"/php/8.2/zts/bin/php -r 'echo ZEND_THREAD_SAFE;')" \
                    && if \
                        [ "$php_thread_safety_bool" = "1" ] \
                    ; then \
                        php_thread_safety_status_upper="ZTS" \
                    ; else \
                        php_thread_safety_status_upper="NTS" \
                    ; fi \
                    && echo -e '    `php`:' \
                    "$("$php_prefix"/php/8.2/zts/bin/php -r 'echo PHP_VERSION;')" \
                    '('"$php_thread_safety_status_upper"'; '"$("$php_prefix"/php/8.2/zts/bin/php -r 'echo OPENSSL_VERSION_TEXT;')"')' \
                    && unset \
                    php_thread_safety_bool \
                    php_thread_safety_status_upper \
                ; else \
                    echo -e '=> PHP 8.2 NTS scaffold found; `php` NOT found.' \
                ; fi \
                && if \
                    [ -f "$php_prefix"/php/8.2/zts/sbin/php-fpm ] \
                ; then \
                    echo -e '`php-fpm`:' \
                    "$("$php_prefix"/php/8.2/zts/sbin/php-fpm -i | \
                    grep "PHP Version" | \
                    head -1 | \
                    sed 's/.*=> //')" \
                    '     ('"$("$php_prefix"/php/8.2/zts/sbin/php-fpm -i | \
                    grep "OpenSSL Library Version" | \
                    sed 's/.*=> //')"')' \
                    && if \
                        [ -f /run/php/php/8.2/zts/php-php-fpm82nts.pid ] \
                    ; then \
                        echo -e '`php-fpm`: .pid found.' \
                    ; else \
                        echo -e '`php-fpm`: .pid NOT found.' \
                    ; fi \
                    && if \
                        [ -S /run/php/php/8.2/zts/php-php-fpm82nts.sock ] \
                    ; then \
                        echo -e '`php-fpm`: .sock found.' \
                    ; else \
                        echo -e '`php-fpm`: .sock NOT found.' \
                    ; fi \
                ; else \
                    echo -e '=> PHP 8.2 NTS scaffold found; `php-fpm` NOT found.' \
                ; fi \
            ; fi \
        ; fi \
    ; else \
        echo -e '=> PHP prefix dir NOT found.' \
    ; fi \
; else \
    echo -e '`=> /etc/php-php-prefix` NOT found.' \
; fi
