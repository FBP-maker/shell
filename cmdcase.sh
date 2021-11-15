#!/usr/bin/env bash
#testando nome de usuário

read -p "Login: " log

case "$log" in
	joão|João)
		echo "User name ok"
	;;

	davi|Davi)
		echo "ok"
	;;

	alf|Alf) echo "Bora alf" ;;
	
	*) echo "User nao encontrado" ;;
esac	
		