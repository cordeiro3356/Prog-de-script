#!/bin/bash
while read hostname
do
ping -c 4 -t 4 "$hostname" > /dev/null 2>&1 && 
echo "Ping para  $hostname : Sucesso" || 
echo "Ping para $hostname : Falha" 
done < ips.txt
