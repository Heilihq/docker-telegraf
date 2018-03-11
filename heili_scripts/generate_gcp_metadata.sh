#!/bin/sh

export HEILI_HOST_ID=$(curl --connect-timeout 8 -s -H "Metadata-Flavor: Google" http://metadata.google.internal/computeMetadata/v1/instance/id)
export HEILI_HOST_IMAGE_ID="unavailable"
export HEILI_HOST_TYPE=$(curl --connect-timeout 8 -s -H "Metadata-Flavor: Google" http://metadata.google.internal/computeMetadata/v1/instance/machine-type)
export HEILI_HOST_TYPE=${HEILI_HOST_TYPE##*/}
export HEILI_DC_AVAILABILITY_ZONE=$(curl --connect-timeout 8 -s -H "Metadata-Flavor: Google" http://metadata.google.internal/computeMetadata/v1/instance/zone)
export HEILI_DC_AVAILABILITY_ZONE=${HEILI_DC_AVAILABILITY_ZONE##*/}
export HEILI_DC_REGION=$(echo ${HEILI_DC_AVAILABILITY_ZONE%??})
export HEILI_DC="gcp"