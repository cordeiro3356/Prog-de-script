#!/bin/bash
var=0
FILE=chave.txt
cd /tmp
while [[ $var <1 ]]; do
    if [ -e "$FILE" ] ; then
    echo "o arquivo chave.txt existe"
    break
    else
    date
    fi
    sleep 2
done
