#!/usr/bin/env bash

#funcoes padrão bash
function sistema(){
		date
		df -h
		w
}

sistema #chamada da função

echo -e "\n"

echo 'Agora com padrão POSIX:'

sistema(){
		date
		df -h
		w
		#para usar váriaveis dentro de funções escrever: 'local variavel=conteudo' 
}

sistema 

echo -e "\n"

function parametros(){
		[[ -z "$1" ]] && echo "Váriavel é nula" || echo "Váriavel não é nula" #problema com o teste
}

parametros "$@"
#ou
parametros "$*"

echo -e "\n"

function status_saida(){
	local diretorio="$HOME"
	ls "$diretorio"
	return 5
}

status_saida

echo "$?"
