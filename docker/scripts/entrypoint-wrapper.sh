#!/bin/bash
set -e

if [ -n "$WEB_ENTRYPOINT" ] && [ -f "$WEB_ENTRYPOINT" ]
then
    $WEB_ENTRYPOINT
fi

if [ -z "$CI" ]; then
    # if not in CI pipeline
    if [ $# -gt 0 ]
    then
        "$@"
    fi
    exec docker-php-entrypoint apache2-foreground
else
    exec docker-php-entrypoint "$@"
fi
