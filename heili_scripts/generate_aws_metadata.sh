#!/bin/sh

export HEILI_HOST_ID=$(curl --connect-timeout 8 -s http://169.254.169.254/latest/meta-data/instance-id)
export HEILI_HOST_IMAGE_ID=$(curl --connect-timeout 8 -s http://169.254.169.254/latest/meta-data/ami-id)
export HEILI_HOST_TYPE=$(curl --connect-timeout 8 -s http://169.254.169.254/latest/meta-data/instance-type)
export HEILI_DC_AVAILABILITY_ZONE=$(curl --connect-timeout 8 -s http://169.254.169.254/latest/meta-data/placement/availability-zone)
export HEILI_DC_REGION=$(echo ${HEILI_DC_AVAILABILITY_ZONE%?})
export HEILI_DC="aws"