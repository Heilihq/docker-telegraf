#!/bin/sh

export HEILI_CUSTOMER=${HEILI_CUSTOMER:-unknown}
export HEILI_DC=${HEILI_DC:-unknown}
export HEILI_DC_REGION=${HEILI_DC_REGION:-unknown}
export HEILI_DC_AVAILABILITY_ZONE=${HEILI_DC_AVAILABILITY_ZONE:-unknown}
export HEILI_ENVIRONMENT=${HEILI_ENVIRONMENT:-unknown}
export HEILI_HOST_ID=${HEILI_HOST_ID:-unknown}
export HEILI_HOST_IMAGE_ID=${HEILI_HOST_IMAGE_ID:-unknown}
export HEILI_HOST_TYPE=${HEILI_HOST_TYPE:-unknown}

export HEILI_AGENT_INTERVAL=${HEILI_AGENT_INTERVAL:-10s}
export HEILI_AGENT_ROUND_INTERVAL=${HEILI_AGENT_ROUND_INTERVAL:-false}
export HEILI_AGENT_METRIC_BATCH_SIZE=${HEILI_AGENT_METRIC_BATCH_SIZE:-500}
export HEILI_AGENT_METRIC_BUFFER_LIMIT=${HEILI_AGENT_METRIC_BUFFER_LIMIT:-10000}
export HEILI_AGENT_COLLECTION_JITTER=${HEILI_AGENT_COLLECTION_JITTER:-5s}
export HEILI_AGENT_FLUSH_INTERVAL=${HEILI_AGENT_FLUSH_INTERVAL:-50s}
export HEILI_AGENT_FLUSH_JITTER=${HEILI_AGENT_FLUSH_JITTER:-10s}
export HEILI_AGENT_PRECISION=${HEILI_AGENT_PRECISION:-""}
export HEILI_AGENT_DEBUG=${HEILI_AGENT_DEBUG:-false}
export HEILI_AGENT_QUIET=${HEILI_AGENT_QUIET:-true}
export HEILI_AGENT_LOGFILE=${HEILI_AGENT_LOGFILE:-""}
export HEILI_AGENT_OMIT_HOSTNAME=${HEILI_AGENT_OMIT_HOSTNAME:-false}
export HEILI_AGENT_SHIPPER_ADDRESS=${HEILI_AGENT_SHIPPER_ADDRESS:-shipper.heilihq.com}
export HEILI_AGENT_SHIPPER_PORT=${HEILI_AGENT_SHIPPER_PORT:-443}
export HEILI_AGENT_SHIPPER_EXCHANGE=${HEILI_AGENT_SHIPPER_EXCHANGE:-telegraf}
export HEILI_AGENT_SHIPPER_AUTH=${HEILI_AGENT_SHIPPER_AUTH:-PLAIN}
export HEILI_AGENT_SHIPPER_ROUTING_TAG=${HEILI_AGENT_SHIPPER_ROUTING_TAG:-customer}
export HEILI_AGENT_SHIPPER_TIMEOUT=${HEILI_AGENT_SHIPPER_TIMEOUT:-5s}

bios_version=$(cat /sys/devices/virtual/dmi/id/bios_version)
case "$bios_version" in
  *amazon*) source /opt/heili/generate_aws_metadata.sh ;;
  *Google*) source /opt/heili/generate_gcp_metadata.sh ;;
esac

source /opt/heili/heili_input_defaults.sh

echo "Customer: ${HEILI_CUSTOMER}"
echo "DC: ${HEILI_DC}"
echo "DC Region: ${HEILI_DC_REGION}"
echo "DC Region AZ: ${HEILI_DC_AVAILABILITY_ZONE}"
echo "Environment: ${HEILI_ENVIRONMENT}"
echo "Host ID: ${HEILI_HOST_ID}"
echo "Host Image ID: ${HEILI_HOST_IMAGE_ID}"
echo "Host Type: ${HEILI_HOST_TYPE}"
