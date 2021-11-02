#!/usr/bin/env bash

read -p "Digite o arquivo que deseja testar:" teste

test -d "$teste"                  \
&& echo -e "É um diretório"          \
|| { test -f "$teste" && echo "É um arquivo" ;}    \
|| echo "Arquivo ou diretório não encontrado"	
