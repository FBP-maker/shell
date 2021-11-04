#!/usr/bin/env bash

echo "Verificando conexão com a internet"

# Bloco if/then/else
if wget -q --spider www.google.com; then
	echo "TEM INTERNET"
else
	echo "Não tem internet..."
fi

#exemplo 2

read -p "Está vindo carro da direita? [sim/não]" rep1
if [[ "$rep1" = "sim" ]]; then
	echo "Ok, então não vamos atravessar!"
	exit 1
fi

read -p "Está vindo carro da esquerda? [sim/não]" rep2
if [[ "$rep2" = "sim" ]]; then
	echo "Ok, então não vamos atravessar!"
			exit 1
fi

read -p "Posso atravessar? [sim/não]" rep3
if [[ "$rep3" = "não" ]]; then
	echo "Ok... fica ai cara!"
	exit 0
else
	echo "Atravessando a rua... vamos lá mano!"
fi

echo "Continuei o trajeto."
