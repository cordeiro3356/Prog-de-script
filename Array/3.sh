#!/bin/bash


menor=0
nome=""

while read linha; do 
	x=${#linha}
	if [ $menor -eq 0 ]; then 
		menor=$x
		nome=${linha}
	else
		if [ $menor -gt $x ];then
			menor=$x
			nome=${linha}
		fi
	fi
done < $1

echo "Menor nome é: $nome"
