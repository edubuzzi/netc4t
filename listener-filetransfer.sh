#!/bin/bash
trap '' 2
curl -s -C - -o IP http://meuip.net.br
IPexterno=$(grep "<title>" IP | cut -d ' ' -f9 | cut -d '<' -f1)
IPinterno=$(hostname -I | cut -d " " -f1)
rm IP
echo
echo "Seu IP Interno é: $IPinterno"
echo "Seu IP Externo é: $IPexterno"
echo
echo "Informe o destino do Arquivo"
echo "Exemplo: '/root/arquivo.txt'" 
read -p "Destino onde vai ser armazenado: " DESTINO
echo "O arquivo vai ser armazenado em '$DESTINO'"
read -p "Informe a porta para escutar (entre 1-65535): " PORTA
trap 2
nc -lvp $PORTA >> $DESTINO
./execute.sh
exit
