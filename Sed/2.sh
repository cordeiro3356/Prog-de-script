#!/bin/bash


while true; do
	read -p "Defina o que quer fazer seguido do nome do arquivo:
		 a - remover todas as letras
		 b - remover digitos
		 c - substituir todos os caracteres que não são letras nem dígitos de um arquivo por <?>.
		 d - sair
		 " opc
	case ${opc} in
		"a") sed -E 's/[a-Z]//g' < README.md ;;
		"b") sed -E 's/[0-9]//g' < README.md ;;
		"c") sed -E 's/[!-/]/<?>/g'< README.md ;;
		"d") break ;;
	esac
done