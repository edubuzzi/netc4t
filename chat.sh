#!/bin/bash

chmod +x ./listener-chat-tcp.sh
chmod +x ./sender-chat-tcp.sh

echo
echo "(1) Escutar Chat TCP"
echo "(2) Enviar Chat TCP"
echo "(0) Voltar"
echo
read -p "Qual sua escolha? " ESCOLHA
case $ESCOLHA in
0)
./execute.sh
;;
1)
./listener-chat-tcp.sh
;;
2)
./sender-chat-tcp.sh
;;
*)
echo "echo" > .chat-again.sh
echo 'echo "(1) Escutar Chat TCP"' >> .chat-again.sh
echo 'echo "(2) Enviar Chat TCP"' >> .chat-again.sh
echo 'echo "(0) Voltar"' >> .chat-again.sh
echo 'echo' >> .chat-again.sh
echo 'read -p "Qual sua escolha? " ESCOLHA' >> .chat-again.sh
echo 'case $ESCOLHA in' >> .chat-again.sh
echo '0)' >> .chat-again.sh
echo './execute.sh' >> .chat-again.sh
echo ';;' >> .chat-again.sh
echo '1)' >> .chat-again.sh
echo './listener-chat-tcp.sh' >> .chat-again.sh
echo ';;' >> .chat-again.sh
echo '2)' >> .chat-again.sh
echo './sender-chat-tcp.sh' >> .chat-again.sh
echo ';;' >> .chat-again.sh
echo "*)" >> .chat-again.sh
echo "./.chat-again.sh" >> .chat-again.sh
echo ";;" >> .chat-again.sh
echo 'esac' >> .chat-again.sh
chmod +x .chat-again.sh
./.chat-again.sh
;;
esac
