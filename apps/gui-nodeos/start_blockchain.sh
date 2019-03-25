#!/usr/bin/env bash
set -o errexit

EXECPATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
ROOTPATH="../..";

echo "=== booting up MongoDB Docker Container ==="
(cd ${ROOTPATH}/packages/ && exec docker-mongodb/start_mongodb_docker.sh )

echo "=== MongoDB Docker Container done, spinning up Nodeos ==="
(cd ${ROOTPATH}/packages/ && exec docker-eosio-nodeos/start_eosio_docker.sh )