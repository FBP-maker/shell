#!/usr/bim/env bash

contadora="0"

while sleep 1s; do
	[[ "$contadora" -eq "120"]] && echo "Acabou o tempo" || let contadora++
done

#Corrigir problemas aula 1
