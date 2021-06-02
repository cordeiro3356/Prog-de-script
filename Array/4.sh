#!/bin/bash


while read linha; do

	var_x=0
	var_y=0
	var_z=""

	for nomes in ${linha}; do 
		var_x=$(($var_x +1 ))
	done

	for abreviacao in ${linha}; do

		var_y=$(($var_y + 1))

		if [ $var_y -eq 1 ]; then
			var_z=$abreviacao
		else

			if [ $var_y -lt $var_x ]; then
				var_z="$var_z ${abreviacao:0:1}."
			else

				if [ $var_y -eq $var_x ]; then
					var_z="$var_z $abreviacao"
				fi
			fi
		fi
	done

	echo $var_z

done <$1
