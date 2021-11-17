#!/usr/bin/env bash

#Baixa videos
#e converte para formato mp3

#==========VÁRIAVEIS DO PROGRAMA=============#
# 64K, 128K, 256K, 320K.
qualidade="320"

# BEST, aac, vorbis, m4a, opus, wav
formato_audio="mp3"

#==========TESTES INICIAIS====================#
[[ "$UID" -eq "0" ]] && { echo "Root? não" ; exit 1;}

youtube-dl --embed-thumbnail --audio-quality "$qualidade" --extract-audio --audio-format "$formato_audio" "$0"