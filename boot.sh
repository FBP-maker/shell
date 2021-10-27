#!/usr/bin/env bash

echo -e "Identifique dispositivo que receberá a imagem: \n  $(fdisk -l)"

read -p "Indique o caminho do dispositivo:" PENDRIVE

mkfs.vfat -I $PENDRIVE

read -p "Forneça o caminho da ISO:" ISO

dd if=$ISO of=$PENDRIVE status=progress && sync 
