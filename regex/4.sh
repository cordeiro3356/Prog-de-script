#!/bin/bash

read -p "valide seu e-mail: " b
echo ${b} > email.txt

if cat email.txt | grep -E --color '[a-z]+@[a-z]+'>/dev/null; 
	then 
		echo "e-mail dentro dos padrões"
	else
		echo "e-mail fora dos padrões"; fi
