#!/usr/bin/env bash
# argumentos - mostra o valor de variáveis especiais (basta referenciar a variável que o valor ja estará definido. Assim é possível criar scripts que tenha opções como --help, --version e outras.)

echo "O nome deste script é; $0"
echo "Recebidos $# argumentos; $*"
echo "O primeiro argumento recebido foi: $1"
Echo "O segundo argumento recebido foi: $2"