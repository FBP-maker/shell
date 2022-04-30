#!/usr/bin/env bash
#Modificando o visual do pront
echo " \
PS1=" [\u]-$(date +"%d/%m/%Y") às $(date +"%H:%M")-[\w]=>\$ "
" >> ~/.bashrc

echo "\
set number 
set mouse=r 
syntax on 
" >> ~/.vimrc
