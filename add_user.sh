#!/usr/bin/env bash

#Testa se o usuário é root
[[ "$UID" -ne "0" ]] && { echo "Necessita de root" ; exit1 ;}

echo \
"
===Bem vindo $user===
1) Criar novo usuário 
2) Excluir usuário 
3) Exit
4) Criar usuário sem permissoẽs
5) Informações do sitema	
=========================
"

read -p "Selecione uma opação: " opcao

case "$opcao" in
	1)
	#adcionando conta de usuário ao sistema
	read -p "Digite nome do usuário: " username
	useradd -m -g users -G wheel,storage,power -s /bin/bash $username
	echo "Criando conta do novo usuário..."
	sleep 2s
	echo "Defina uma senha!"
	passwd $username
	;;
	2) 
	read -p "Digite nome do usuário: " username
	userdel -r $username
	;;
	3) exit 0 ;;
	4)
	read -p "Digite nome do usuário: " username
	useradd $username 
	sleep 2s
	echo "Defina uma senha!"
	passwd $username 
	;;
	5) neofetch ;;
	*) echo "Opção inexistente!"
esac
