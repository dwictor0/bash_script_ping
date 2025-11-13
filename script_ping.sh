#/!bin/bash
if [ -z "$1" ]
then 
   echo "SCRIPT - PING SCAN"
   echo "Modo de uso - $0 (endereco ip)"
   echo "Exemplo ./$0 192.168.xx"
else
for host in $(seq 1 254)
do
ping -c 1 $1,$host | grep "64 bytes" | cut -d " " -f 4
done
fi 

