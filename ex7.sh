#!/usr/bin/env bash

#Imprime tela de boas vindas
echo 'Bem vindo ao "ex7.sh", seus dados estão seguros!'

#Adormece o programa por 5 segundos comando 'sleep'
sleep 5s

#Imprime nome do usuário, sua home e  o interpretador
echo -e "\n Nome do usuário é: $USER
Sua HOME pessoal é: $HOME
O shell utilizado é: $SHELL \n\n"


#Solicita informações do usúario
read -p "Seu nome é:" nome
read -p "Sua idade é:" idade
read -p "Seu endereço:" end
read -p "Telefone para contato:" fone
read -p "Grau de escolarida:" escolaridade
read -p "Profissão:" prof


#Imprime as informações fornecidas pelo usuário
echo -e "\n Confira as informações fornecidas:
\n
Seu nome é: $nome
Idade: $idade 
Endereço: $end
Telefone: $fone
Escolaridade: $escolaridade
Profissão: $prof \n"

# Pergunta se as informações estão corretas
read -p "Você confirma que estas inforções estão correas? [s/n]  " resp







