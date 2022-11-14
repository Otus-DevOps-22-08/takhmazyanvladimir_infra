#!/bin/bash
IP_APP=$(yc compute instance get reddit-app --format=json | jq -r '.network_interfaces[0].primary_v4_address.one_to_one_nat.address')
IP_DB=$(yc compute instance get reddit-db --format=json | jq -r '.network_interfaces[0].primary_v4_address.one_to_one_nat.address')
#echo '{"app":{"hosts":{"appserver":{"ansible_host":"'$IP_APP'"}}},"db":{"hosts":{"dbserver":{"ansible_host":"'$IP_DB'"}}}}'
#echo '{"hosts":["'$IP_APP'","'$IP_DB'"]}'
echo '{"app":{"hosts":["'$IP_APP'"]},"db":{"hosts":["'$IP_DB'"]}}'
#echo '{["'$IP_APP'","'$IP_DB'"]}'
