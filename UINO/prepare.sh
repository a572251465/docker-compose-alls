#!/bin/bash

network_name=uino_network
gateway_value=172.20.0.1
subnet_value=172.20.0.0/16


if docker network ls --format '{{.Name}}' 2>/dev/null | grep -qx "$network_name";
then
  docker network rm $network_name
  echo "$network_name rm success."
fi

docker network create --driver bridge --subnet=$subnet_value --gateway=$gateway_value $network_name
echo "$network_name create success"