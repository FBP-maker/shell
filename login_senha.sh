#!/usr/bin/env bash

# Váriaveis do Programa==================================#
user="filipe"
password="9490"

read -p "Loin: " _login
read -t 5 -sp "Password: " _pass
if [[ "$_login" = "filipe" ]] && [[ "$_pass" -eq "$password" ]]; then
	echo -e "\nUsuário correto"
	sleep 2s
	clear
else
	echo "Login ou Passowrd Inválidos"
	exit 1
fi

echo \
"===Bem vindo $user===
1) Abrir Editor mousepad 
2) Abrir Editor chromium 
3) Ouvir Música 
4) Exit 
=========================
"

read -p "Selecione uma opação: " opcao

case "$opcao" in
	1) 
	[[ $(type -P mousepad) ]] || { echo "Pacote não encontrado"; exit 1 ;}
	mousepad &
	;;
	2) chromium & ;;
	3) audacious & ;;
	4) exit 0 ;;
	*) echo "Opção inexistente!"
esac

