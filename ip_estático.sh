#!/usr/bin/env bash

ip a

read -p "Indique o nome do dispositivo: " interface

read -p "IPADDR desejado: " IP

read -p "NETMASK: " MASCARA

read -p "GATEWAY: " GATEWAY

echo "
DEVICE=$(interface)
IPADDR=$(IP)
NETMASK=$(MASCARA)
GATEWAY=$(GATEWAY)
ONBOOT=yes" >> /etc/syconfig/network-scripts/ifcfg-$(interface)

service network restart