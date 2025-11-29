#!/bin/bash

if [[ -z "$1" && "$EUID" -ne 0 ]];
then 
   echo "SCRIPT - PING SCAN"
   echo "[!] É necessário executar como root (sudo)"
   echo "[!] Modo de uso - sudo $0 (endereco ip)"
   echo "[!] Exemplo - sudo $0 192.168.xx"
else
for host in $(seq 1 254)
do
hping3 -S -p 80 -c  1 $1.$host 2> /dev/null | grep "flags=SA" | cut -d " " -f 2 | cut -d "=" -f 2;
done
fi 
if ! command -v hping3 >/dev/null 2>&1; then
   echo "[!!] O comando 'hping3' não foi encontrado."
   echo "[!!] Consulte o README para instruçoes de instalacao."
fi

