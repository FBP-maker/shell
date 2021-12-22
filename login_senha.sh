#!/usr/bin/env bash

#Chamada Configuração=====================================#
source ./Sistema-login/login_senha.conf
source ./Sistema-login/biblioteca #chamada função externa

#FUNÇÕES=================================================#
function _login(){
		read -p "Login: " _login
	read -t 5 -sp "Password: " _pass
	if [[ "$_login" = "filipe" ]] && [[ "$_pass" -eq "$password" ]]; then
		echo -e "\nUsuário correto"
		sleep 2s
		clear
	else
		echo "Login ou Passowrd Inválidos"
		exit 1
	fi
	#menu
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
#fecha bloco -l , --login
}

#Chamada em linha========================================#

case $1 in
	-l|--login)
			_login #chamando função
	 ;;
	
	-h|--help)
			_help #Chamando função		
     ;;
	
	*) echo "Use a opção -h, --help para ajuda!" 

esac #Case principal

