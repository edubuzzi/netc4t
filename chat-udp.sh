#!/bin/bash

chmod +x ./listener-chat-udp.sh
chmod +x ./sender-chat-udp.sh

echo
echo "(1) Escutar Chat UDP"
echo "(2) Enviar Chat UDP"
echo "(0) Voltar"
echo
read -p "Qual sua escolha? " ESCOLHA
case $ESCOLHA in
0)
./execute.sh
;;
1)
./listener-chat-udp.sh
;;
2)
./sender-chat-udp.sh
;;
*)
echo "echo" > .chat-udp-again.sh
echo 'echo "(1) Escutar Chat UDP"' >> .chat-udp-again.sh
echo 'echo "(2) Enviar Chat UDP"' >> .chat-udp-again.sh
echo 'echo "(0) Voltar"' >> .chat-udp-again.sh
echo 'echo' >> .chat-udp-again.sh
echo 'read -p "Qual sua escolha? " ESCOLHA' >> .chat-udp-again.sh
echo 'case $ESCOLHA in' >> .chat-udp-again.sh
echo '0)' >> .chat-udp-again.sh
echo './execute.sh' >> .chat-udp-again.sh
echo ';;' >> .chat-udp-again.sh
echo '1)' >> .chat-udp-again.sh
echo './listener-chat-udp.sh' >> .chat-udp-again.sh
echo ';;' >> .chat-udp-again.sh
echo '2)' >> .chat-udp-again.sh
echo './sender-chat-udp.sh' >> .chat-udp-again.sh
echo ';;' >> .chat-udp-again.sh
echo "*)" >> .chat-udp-again.sh
echo "./.chat-udp-again.sh" >> .chat-udp-again.sh
echo ";;" >> .chat-udp-again.sh
echo 'esac' >> .chat-udp-again.sh
chmod +x .chat-udp-again.sh
./.chat-udp-again.sh
;;
esac
exit
