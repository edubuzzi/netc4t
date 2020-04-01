#!/bin/bash
trap '' 2
curl -s -C - -o IP http://meuip.net.br
IPexterno=$(grep "<title>" IP | cut -d ' ' -f9 | cut -d '<' -f1)
IPinterno=$(hostname -I | cut -d " " -f1)
rm IP
echo
echo -e "Seu IP Interno é: \033[01;31m$IPinterno\033[01;00m"
echo -e "Seu IP Externo é: \033[01;31m$IPexterno\033[01;00m"
echo
echo "Digite o nome que o arquivo vai receber"
echo "Exemplo: 'arquivo.txt'"
read -p "Digite o nome do arquivo: " ARQUIVO
if [ -z $ARQUIVO ]
then
ARQUIVO="arquivo"
fi
mkdir $PWD/files 2> /dev/null
echo "O arquivo vai ser armazenado em '$PWD/files/$ARQUIVO'"
read -p "Informe a porta para escutar (entre 1-65535): " PORTA
trap 2
nc -lvp $PORTA >> $PWD/files/$ARQUIVO
./execute.sh
exit
