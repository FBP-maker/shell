#!/usr/bin/env bash

#Teste do programa
#testa internet
if ! wget -q --spider www.google.com; then
	echo "Necessita de internet para realizar está operação"
	exit 1
fi

#Testa se o usuário é root
[[ "$UID" -ne "0" ]] && { echo "Necessita de root" ; exit1 ;}

if apt update -y; then #atualizando lista de pacotes
	echo "Sistema atualizado."
else
	echo "Atualização Falhou"
	exit 1
fi

if apt upgrade -y; then
	echo "Upgrade dos foi realizados com sucesso"
else
	echo "Upgrade dos pacotes falhou"
if

apt full-upgrade

if apt Clean; then #limpando /var/cache/apt/archives
	echo "Arquivos desnecessarios retirados"
else
	echo "clean falho"fi


