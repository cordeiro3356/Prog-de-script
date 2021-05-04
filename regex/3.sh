#!/bin/bash

read -p "senha: " cod
los="..."
echo ${cod} > senha.txt
while [ "${los}" != "s" ]; do
	if cat senha.txt | grep -E --color '[a-z]' > saida.txt; then a="s"; fi
	if cat senha.txt | grep -E --color '[A-Z]' > saida.txt; then b="s"; fi
	if cat senha.txt | grep -E --color '[0-9]' > saida.txt; then c="s"; fi

	echo $a$b$c > OK.txt

	if cat OK.txt | grep -E --color '[s]{3}' > saida.txt; then los="s"; fi

	read -p "senha: " cod
	echo ${cod} > senha.txt
done

rm senha.txt OK.txt saida.txt
