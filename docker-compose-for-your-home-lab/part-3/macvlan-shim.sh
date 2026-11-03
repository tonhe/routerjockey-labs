#!/bin/bash
set -euo pipefail

PARENT="enp4s0"            # the Docker host's LAN interface
SHIM="lan-shim"            # the host's own macvlan interface
SHIM_IP="192.168.1.54/32"  # reserved with --aux-address
BLOCK="192.168.1.48/28"    # the whole block set aside for Docker

# Wait up to 30 seconds for the parent link to come up
for i in {1..30}; do
  [ "$(cat /sys/class/net/$PARENT/operstate 2>/dev/null)" = "up" ] && break
  sleep 1
done

ip link show "$SHIM" >/dev/null 2>&1 || \
  ip link add "$SHIM" link "$PARENT" type macvlan mode bridge
ip addr replace "$SHIM_IP" dev "$SHIM"
ip link set "$SHIM" up
ip route replace "$BLOCK" dev "$SHIM"
