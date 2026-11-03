#!/bin/bash
docker network create -d macvlan \
  --subnet=192.168.1.0/24 \
  --gateway=192.168.1.1 \
  --ip-range=192.168.1.56/29 \
  --aux-address="host-shim=192.168.1.54" \
  -o parent=enp4s0 \
  lan
