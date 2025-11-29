#!/bin/bash
if [ -z "$1" ]
then 
   echo "SCRIPT - PING SCAN"
   echo "Modo de uso - $0 (endereco ip)"
   echo "Exemplo ./$0 192.168.xx"
else
for host in $(seq 1 254)
do
hping3 -S -p 80 -c  1 $1.$host 2> /dev/null | grep "flags=SA" | cut -d " " -f 2 | cut -d "=" -f 2;
done
fi 

