#!/usr/bin/env bash
#--> Raciocinio
#Criar um menu com os seguintes comandos
#Chromium
#Mousepad
#Terminal

echo "#=================="
echo "1) Abrir o chromium"
echo "2) Abrir o Mousepad"
echo "3) Abrir o XFCE terminal"
echo "4)Sair"
echo "#=================="
read -p "Selecione uma das opções: " opcao

if [[ "$opcao" -eq "1" ]]; then
	chromium &
elif [[ "$opcao" -eq "2" ]]; then
	mousepad &
elif [[ "$opcao" -eq "3" ]]; then
	xfce4-terminal &
elif [[ "$opcao" -eq "4" ]]; then
	exit 0
else
	echo "Não existe esta opção"
fi
