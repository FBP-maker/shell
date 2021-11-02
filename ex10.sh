#!/usr/bin/env bash

nome_conferir="fbp"

#Inicio programa
read -p "Qual seu nome?" nome
test -z "$nome"                           \
&& { echo "variável está nula" ; exit;}   \
|| echo "A variável NÃO é nula!"

test "$nome" = "$nome_conferir"              \
&& echo "$nome é igual a $nome_conferir"     \
|| echo "$nome NÃO é igual a $nome_conferir" 
