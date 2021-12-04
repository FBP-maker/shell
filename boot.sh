#!/usr/bin/env bash

#Testa se o usuário é root
[[ "$UID" -ne "0" ]] && { echo "Necessita de root" ; exit 1 ;}

echo -e "Identifique dispositivo que receberá a imagem: \n  $(fdisk -l)"

read -p "Indique o caminho do dispositivo:" PENDRIVE

clear

mkfs.vfat -I $PENDRIVE

read -p "Forneça o caminho da ISO:" ISO

dd if=$ISO of=$PENDRIVE status=progress && sync 
