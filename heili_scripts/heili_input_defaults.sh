#!/bin/sh

# System
export HEILI_INPUT_SYSTEM_FIELD_PASS=${HEILI_INPUT_SYSTEM_FIELD_PASS:-[\"load1\", \"load5\", \"load15\", \"n_cpus\"]}

# Disk
export HEILI_INPUT_DISK_DROP_FSTYPE=${HEILI_INPUT_DISK_DROP_FSTYPE:-[\"tmpfs\", \"sysfs\", \"proc\", \"devtmpfs\", \"devfs\", \"mtmfs\", \"ramfs\", \"rootfs\"]}

# Rabbitmq
#export HEILI_INPUT_RABBITMQ_URL=${HEILI_INPUT_RABBITMQ_URL:-http://localhost:15672}
export HEILI_INPUT_RABBITMQ_URL="${HEILI_INPUT_RABBITMQ_PROTOCOL}://${HEILI_INPUT_RABBITMQ_ADDRESS}:${HEILI_INPUT_RABBITMQ_PORT}"
export HEILI_INPUT_RABBITMQ_USER=${HEILI_INPUT_RABBITMQ_USER:-guest}
export HEILI_INPUT_RABBITMQ_PASS=${HEILI_INPUT_RABBITMQ_PASS:-guest}
export HEILI_INPUT_RABBITMQ_HEADER_TIMEOUT=${HEILI_INPUT_RABBITMQ_HEADER_TIMEOUT:-3s}
export HEILI_INPUT_RABBITMQ_CLIENT_TIMEOUT=${HEILI_INPUT_RABBITMQ_CLIENT_TIMEOUT:-4s}
#export HEILI_INPUT_RABBITMQ_NODES=${HEILI_INPUT_RABBITMQ_NODES:-[]}
export HEILI_INPUT_RABBITMQ_NODES=["\"rabbit@${HEILI_INPUT_RABBITMQ_NODES}\""]
export HEILI_INPUT_RABBITMQ_QUEUES=${HEILI_INPUT_RABBITMQ_QUEUES:-[]}

# Elasitcsearch
#export HEILI_INPUT_ELASTICSEARCH_SERVERS=${HEILI_INPUT_ELASTICSEARCH_SERVERS:-[\"http://localhost:9200\"]}
export HEILI_INPUT_ELASTICSEARCH_SERVERS=["\"${HEILI_INPUT_ELASTICSEARCH_PROTOCOL}://${HEILI_INPUT_ELASTICSEARCH_ADDRESS}:${HEILI_INPUT_ELASTICSEARCH_PORT}\""]
export HEILI_INPUT_ELASTICSEARCH_HTTP_TIMEOUT=${HEILI_INPUT_ELASTICSEARCH_HTTP_TIMEOUT:-5s}
export HEILI_INPUT_ELASTICSEARCH_LOCAL=${HEILI_INPUT_ELASTICSEARCH_LOCAL:-true}
export HEILI_INPUT_ELASTICSEARCH_CLUSTER_HEALTH=${HEILI_INPUT_ELASTICSEARCH_CLUSTER_HEALTH:-false}
export HEILI_INPUT_ELASTICSEARCH_CLUSTER_HEALTH_LEVEL=${HEILI_INPUT_ELASTICSEARCH_CLUSTER_HEALTH_LEVEL:-indices}
export HEILI_INPUT_ELASTICSEARCH_CLUSTER_STATS=${HEILI_INPUT_ELASTICSEARCH_CLUSTER_STATS:-false}
export HEILI_INPUT_ELASTICSEARCH_NODE_STATS=${HEILI_INPUT_ELASTICSEARCH_NODE_STATS:-[\"jvm\", \"http\"]}

# Postgresql
#export HEILI_INPUT_POSTGRESQL_ADDRESS=${HEILI_INPUT_POSTGRESQL_ADDRESS:-postgres://telegraf@localhost/someDB?sslmode=disable}
export HEILI_INPUT_POSTGRESQL_ADDRESS="postgres://${HEILI_INPUT_POSTGRESQL_USER}:${HEILI_INPUT_POSTGRESQL_PASSWORD}@${HEILI_INPUT_POSTGRESQL_ADDRESS}/${HEILI_INPUT_POSTGRESQL_DB}?sslmode=${HEILI_INPUT_POSTGRESQL_SSL}"
export HEILI_INPUT_POSTGRESQL_IGNORED_DATABASES=${HEILI_INPUT_POSTGRESQL_IGNORED_DATABASES:-[]}

# Docker
export HEILI_INPUT_DOCKER_ENDPOINT=${HEILI_INPUT_DOCKER_ENDPOINT:-unix:///var/run/docker.sock}
export HEILI_INPUT_DOCKER_GATHER_SERVICES=${HEILI_INPUT_DOCKER_GATHER_SERVICES:-false}
export HEILI_INPUT_DOCKER_CONTAINER_NAMES=${HEILI_INPUT_DOCKER_CONTAINER_NAMES:-[]}
export HEILI_INPUT_DOCKER_CONTAINER_NAME_INCLUDE=${HEILI_INPUT_DOCKER_CONTAINER_NAME_INCLUDE:-[]}
export HEILI_INPUT_DOCKER_CONTAINER_NAME_EXCLUDE=${HEILI_INPUT_DOCKER_CONTAINER_NAME_EXCLUDE:-[]}
export HEILI_INPUT_DOCKER_TIMEOUT=${HEILI_INPUT_DOCKER_TIMEOUT:-5s}
export HEILI_INPUT_DOCKER_PERDEVICE=${HEILI_INPUT_DOCKER_PERDEVICE:-false}
export HEILI_INPUT_DOCKER_TOTAL=${HEILI_INPUT_DOCKER_TOTAL:-true}
export HEILI_INPUT_DOCKER_DOCKER_LABEL_INCLUDE=${HEILI_INPUT_DOCKER_DOCKER_LABEL_INCLUDE:-[]}
export HEILI_INPUT_DOCKER_DOCKER_LABEL_EXCLUDE=${HEILI_INPUT_DOCKER_DOCKER_LABEL_EXCLUDE:-[]}
export HEILI_INPUT_DOCKER_TAG_ENV=${HEILI_INPUT_DOCKER_TAG_ENV:-[]}
