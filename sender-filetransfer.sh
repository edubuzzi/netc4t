#!/bin/bash
trap '' 2
echo
read -p "Informe o IP que vai receber o arquivo: " IPreceber
read -p "Informe a porta que está escutando: " PORTA
echo
echo "Informe o destino do arquivo que deseja enviar"
echo "Exemplo: '/root/arquivo.txt'" 
echo
read -p "Informe o destino do arquivo: " DESTINO
echo
echo "Enviando $DESTINO na porta $PORTA do $IPreceber .."
echo
trap 2
nc $IPreceber $PORTA -w2 < $DESTINO
./execute.sh
exit
