#!/usr/bin/env bash

echo "Qual o seu nome?"
read nome

echo "Qual sua altura?"
read altura

echo "Qual sua escolaridade"
read escolaridade

echo "O seu nome é: $nome"
echo "A sua altura é: $altura"
echo "A sua escolaridade é: $escolaridade"

echo "segunda parte, reduzindo o codigo"

read -p "Qual o seu nome?" nome
read -p "Qual sua altura?" altura
read -p "Qual sua escolaridade" escolaridade

echo "O seu nome é: $nome"
echo "A sua altura é: $altura"
echo "Sua escolaridade é: $escolaridade"

