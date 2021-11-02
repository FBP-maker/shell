#!/usr/bin/env bash

#TESTES INICIAIS DO PROGRAMA

verificanddo se o leafpad existe no sistema.
[[ $(type -P leafpad) ]] || { echo "Necessita do leafpad, para executar esse programa" ; exit 1 ;}

# Não é root? então tchau.
# [[ "$UID" -ne "0" ]] && { echo "Necessita de root, para executar o programa." ; exit 1;}

read -p "Nome?" nome

[[ -z "$nome" ]] && echo "Tem algum conteúdo" || echo "Não tem nenhum conteúdo!"
