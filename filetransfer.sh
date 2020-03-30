#!/bin/bash
chmod +x ./listener-filetransfer.sh
chmod +x ./sender-filetransfer.sh
trap '' 2
echo
echo "(1) Receber Arquivo"
echo "(2) Enviar Arquivo"
echo "(0) Voltar"
echo
read -p "Qual sua escolha? " ESCOLHA
case $ESCOLHA in
0) ./execute.sh ;;
1) ./listener-filetransfer.sh ;;
2) ./sender-filetransfer.sh ;;
*)
echo "trap '' 2" > .filetransfer-again.sh
echo "echo" >> .filetransfer-again.sh
echo 'echo "(1) Receber Arquivo"' >> .filetransfer-again.sh
echo 'echo "(2) Enviar Arquivo"' >> .filetransfer-again.sh
echo 'echo "(0) Voltar"' >> .filetransfer-again.sh
echo 'echo' >> .filetransfer-again.sh
echo 'read -p "Qual sua escolha? " ESCOLHA' >> .filetransfer-again.sh
echo 'case $ESCOLHA in' >> .filetransfer-again.sh
echo '0) ./execute.sh ;;' >> .filetransfer-again.sh
echo '1) ./listener-filetransfer.sh ;;' >> .filetransfer-again.sh
echo '2) ./sender-filetransfer.sh ;;' >> .filetransfer-again.sh
echo "*)" >> .filetransfer-again.sh
echo "./.filetransfer-again.sh" >> .filetransfer-again.sh
echo ";;" >> .filetransfer-again.sh
echo 'esac' >> .filetransfer-again.sh
chmod +x .filetransfer-again.sh
./.filetransfer-again.sh
;;
esac
exit
