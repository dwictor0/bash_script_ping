# PortScan Script
Este script em Bash realiza um ping scan utilizando o hping3 para verificar hosts ativos em uma rede.

## Uso
```bash
sudo ./script_ping.sh <endereco_ip>
```
utilize apenas o começo do endereço ip ele testará de .1 a .254 ,  o script exibirá os IPs ativos que responderem na porta 80.  

## Possíveis Erros

### 1. hping3: command not found
Causa: O hping3 não está instalado.  
Solução: Instale com o seguinte comando: 
```bash
sudo apt-get install hping
```
### 2. Sintaxe incorreta / parâmetro ausente
Solução: O script mostrará automaticamente:
>
>SCRIPT - PING SCAN  
>Modo de uso - ./script_ping.sh (endereco ip)  
>Exemplo ./script_ping.sh 192.168.0
>

## Changelog

### v1.0.0 – Primeira versão
- Loop de 1 a 254 implementado.
- Uso do comando ping
- Filtro com grep e cut para extrair IPs ativos.

### v1.1.0 – HPING3
- Substitui ping por hping3 , permitindo envio de pacotes SYN na porta 80.
- Busca de hosts ativos que retornarem com a flag=SA
