#!/bin/bash


remover_letras_maiusculas() {
	tr -d 'A-Z' < $1 > sem_maiusculas
	
}


remover_digitos() {
	sed -E -e 's/[0-9]//g' $1 > sem_digitos
	
}


remover_caracter_especial() {
	$(awk '{gsub(/[!@#$%"&\ *\.\,\/\{\[\]\(\)\}]+/, "<?>" )}{print $0}' $1 > sem_caracter_especial)
	
}

echo -e "      OPÇÕES: \n" "a - Remover Todas Letras Maiúsculas\n" "b - Remover Todos os Digitos\n" "c - Substituir Todos Caracteres Especiais por <?>" 

read -p "Qual Opção Você Deseja ? " op
read -p "Qual Arquivo ? " arq

if [ $op == 'a' ]; then
       	$( remover_letras_maiusculas $arq ) 
	cat sem_maiusculas	

elif [ $op == 'b' ]; then
	$( remover_digitos $arq )
	cat sem_digitos
	

elif [ $op == 'c' ]; then
	$( remover_caracter_especial $arq)
	cat sem_caracter_especial 
	
	
fi
