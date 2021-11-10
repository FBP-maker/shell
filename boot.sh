#!/usr/bin/env bash

#testa internet
if ! wget -q --spider www.google.com; then
	echo "Necessita de internet para realizar está operação"
	exit 1
fi

#Testa se o usuário é root
[[ "$UID" -ne "0" ]] && { echo "Necessita de root" ; exit1 ;}

echo -e "Identifique dispositivo que receberá a imagem: \n  $(fdisk -l)"

read -p "Indique o caminho do dispositivo:" PENDRIVE

mkfs.vfat -I $PENDRIVE

read -p "Forneça o caminho da ISO:" ISO

dd if=$ISO of=$PENDRIVE status=progress && sync 
