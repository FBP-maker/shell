

#Testa se o usuário é root
[[ "$UID" -ne "0" ]] && { echo "Necessita de root" ; exit1 ;}

read -p "Insira tamanho do swap desejado em mb: " swap

#criar um arquivo, chamado swapfile, na raiz do sistema operacional
dd if=/dev/zero of=/swapfile bs=1M count=$swap

#Estabelece a área swap no arquivo criado.
mkswap -f /swapfile

#Altera as permissões do arquivo para 600, permitindo que somento o root possar ler e/ou alterar o arquivo.
chmod 600 /swapfile

swapon /swapfile

swapon -s

#Para tornar permanentemente ativo o arquivo de swap acresça uma refêrencia ao mesmo no fim do arquivo # nano /etc/fstab:
 #/swapfile     none          swap     sw      0     0