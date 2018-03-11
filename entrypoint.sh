#!/bin/sh
set -e

source /opt/heili/heili_environment.sh

if [ "${1:0:1}" = '-' ]; then
    set -- telegraf --config-directory /etc/telegraf/telegraf.d --input-filter cpu:system:mem:disk:processes "$@"
fi

exec "$@"
