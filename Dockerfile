FROM telegraf:1.7.4-alpine

RUN apk add --update curl

COPY telegraf/ /etc/telegraf/
COPY entrypoint.sh /entrypoint.sh
COPY heili_scripts/ /opt/heili/

CMD ["telegraf", "--config-directory", "/etc/telegraf/telegraf.d", "--input-filter", "cpu:system:mem:disk:processes"]
