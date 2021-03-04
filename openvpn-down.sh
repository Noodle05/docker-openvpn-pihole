#!/bin/bash

OPENVPN_PIHOLE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

docker-compose -f "${OPENVPN_PIHOLE_DIR}/docker-compose.yml" down -v
