#!/bin/bash

function maior_do_array {
	
	valor_maior=0
	
	for i in $*; do

		[ $valor_maior -lt $i ] && valor_maior=$(echo $i)
		
	done

	echo $valor_maior
}

read -p "digite números: " x

echo "maior número é $(maior_do_array ${x[*]})"
