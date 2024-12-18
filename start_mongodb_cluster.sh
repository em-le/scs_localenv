#!/bin/bash

NETWORK_NAME=scancans_shared-network
if [ "$(docker network ls | grep "${NETWORK_NAME}")" == "" ]; then
   docker network create --driver bridge ${NETWORK_NAME}
fi

docker compose -f docker-compose.infra.yml up -d
sleep 5
docker compose -f docker-compose.infra.yml exec mongodb_1 /scripts/rs_init_auth.sh