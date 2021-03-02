#!/bin/bash


#cria a variavel data na ordem ano/mes/dia
data=$(date +%Y_%m_%d)

#cria diretorio data
mkdir /tmp/$data

#variavel
atual=$(pwd)

#copia todos os arquivos
cp -r $atual* /tmp/$data

#compacta os arquivos em tar.gz
tar -cvzf compactado.tar.gz /tmp/$data/

#remove o diretorio data
rm -r /tmp/$data


