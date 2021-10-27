#!/usr/bin/env bash

#Usando comandos em variáveis:
echo 'primeira entrada'
listar=$(ls)

echo "$listar"

echo 'segunda entrada'
#podemos usar também``
listar=`ls /`

echo "$listar"


