#!/bin/bash

OPENVPN_PIHOLE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

docker-compose -f "${OPENVPN_PIHOLE_DIR}/docker-compose.yml" up -d
docker exec vpn_pihole ip route add 192.168.193.0/255.255.255.0 via 172.16.110.3
docker exec vpn_pihole ip route add 192.168.101.0/255.255.255.0 via  172.16.110.3
