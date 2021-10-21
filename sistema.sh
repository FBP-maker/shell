#!/bin/bash
# sistema - script que mostra informações sobre o sistema
# Autor: Fulando da Silva

# Peder uma confirmação do usuário antes de executar o script
echo "Vou buscar os dados do sistema. Posso continuar? Digite [s] para sim ou, [n] para não."
read RESPOSTA

# Se digitado 'n', vamos interromper o script
test "$RESPOSTA" = "n" && exit

# O date mostra a data e a hora correntes
echo "Data e Horário"
date

# O df mostra as partições e quanto cada uma ocupa no disco
echo "Uso do disco"
df

# O w mostra os usuários que estão conectados nesta máquina
echo "Usuários conectados"
w