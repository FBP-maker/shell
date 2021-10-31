#!/usr/bin/env bash

#Operadores lógicos

# && equivale a "e" ou "and" ex: ls && pwd que dizer q se o status de saída de ls for igual a zero ele realiza o pwd se nao ele para.
# || equivale a "ou" ou "or" ex: se o primeiro comando falhar ele realiza o segundo comando.

#test "fbp" = "pbf" #diferente de zero
#&& echo "Sim fbp é igual a pbf" #somente aceita STATUS 0, ou seja sem erros
#|| echo "Não, fbp não é igual a pbf" #Somente aceita status de saida diferente de 0

read -p "qual seu nome?" nome
test -z "$nome"                 \
&& echo "A variável é nula!"    \
|| echo "A variável não é nula"

