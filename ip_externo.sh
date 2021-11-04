#!/usr/bin/env bash

#Váriaveis do programa=====
servidor1="icanhazip.com"
servidor2="v4.ifconfig.com"
#==========================
#TESTES INICIAIS===========
echo "Vereficando se há conexão com a internet..."
if ! wget -q --spider www.google.com; then
	echo "Necessita de internet"
	exit 1
fi
#==========================

exec_=$(if ! curl -s "$servidor1"; then curl -s "$servidor2"; fi)

echo "O seu ipe externo é: $exec_"
