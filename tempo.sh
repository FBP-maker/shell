#!/usr/bin/env bash

if ! curl --version; then
	echo "Necessita instalação curl"
	exit
fi

#testa internet
if ! wget -q --spider www.google.com; then
	echo "Necessita de internet para realizar está operação"
	exit 1]
fi

read -p "Insira cidade para saber a previsão do tempo: " tempo

curl wttr.in/"$tempo"