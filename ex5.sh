#!/usr/bin/env bash

ID=$(echo "$UID")
diretorio="/home/filipe"

echo "O ID do usuário logado no momento é: $ID"
cd "$diretorio"

echo "Executando comando PWD"
pwd

diretorio="/home"
echo "Entrando no diretorio $diretorio"
cd "$diretorio"
pwd
