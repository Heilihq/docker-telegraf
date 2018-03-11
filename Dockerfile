FROM telegraf:1.4.4-alpine

RUN apk add --update curl

# COPY telegraf.conf /etc/telegraf/telegraf.conf
# COPY telegraf.d /etc/telegraf/telegraf.d
COPY telegraf/ /etc/telegraf/
COPY entrypoint.sh /entrypoint.sh
COPY heili_scripts/ /opt/heili/
# COPY heili_environment.sh /opt/heili/heili_environment.sh
# COPY heili_input_defaults.sh /opt/heili/heili_input_defaults.sh
# COPY generate_aws_metadata.sh /opt/heili/generate_aws_metadata.sh
# COPY generate_gcp_metadata.sh /opt/heili/generate_gcp_metadata.sh

CMD ["telegraf", "--config-directory", "/etc/telegraf/telegraf.d", "--input-filter", "cpu:system:mem:disk:processes"]
