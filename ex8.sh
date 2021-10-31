#!/usr/bin/env bash

#Operações com o comando test e seus operadores:
# =   (confere se é igual)
# !=  (confere se NÃO é igual)
# -n  (confere se string ou variável não é nula)
# -z  (confere se string ou variável é nula)
# Status de saída 0 (zero) verdadeiro, 1 (falso)

nome_confere="fbp"

#iniciando programa
read -p "Qual seu Nome?" nome

test "$nome" = "$nome_confere"
echo "Status de Saída: $?"

echo -e "\n Fim"

#tomar cuidado com a variável $? pq ele pega o resultado do ultimo comando utilizado;

echo 'outro teste'
read -p "Qual seu Nome?" nome
test -z "$nome" 
echo "Status de Saída: $?"
