!/usr/bin/env bash
#Modificando o visual do pront
echo "PS1=' [\$LOGNAME]-\$(date +"%d/%m/%Y") as \$(date +"%H:%M")-\$(pwd)=>\\$ '" >> /home/fbp/.bashrc

echo \
"
set number 
set mouse=r 
syntax on 
" >> /home/fbp/.vimrc
