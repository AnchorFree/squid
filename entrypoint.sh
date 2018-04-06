#!/bin/sh
set -e

if ! (squid -k parse >/dev/null 2>&1); then
    echo "squid config has errors"
    exit 1
fi

if [ ! -d /var/log ] || [ ! -d /var/log/squid ]; then
    mkdir -p /var/log/squid
fi

[ -f /var/log/access.log ] && cat /dev/null > /var/log/access.log
[ -f /var/log/squid/cache.log ] && cat /dev/null > /var/log/squid/cache.log
chown -R squid /var/log

[ -f /var/run/squid.pid ] && rm -rf /var/run/squid.pid

exec squid -N -d error
