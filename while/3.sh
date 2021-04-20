while :; do
    read -p "explorador de arquivos, digite o seu comando!
    q 	 - sair
	d 	 - para ver os diretórios da pasta atual
	f 	 - para ver os arquivos
	v <arq>  - para ver o conteudo do arquivo <arq>
	cd <dir> - para ir ao diretório desejado " comando var
    if [[ ${comando} = "q" ]] 
    then
        break
    fi
    if [[ ${comando} = "d" ]] 
    then
        echo "------------------------------------"
        pwd
        echo "------------------------------------"

    fi
    if [[ ${comando} = "f" ]] 
    then
        echo "------------------------------------"
        ls
        echo "------------------------------------"
    fi
    if [[ ${comando} = "v" ]] 
    then
        echo "------------------------------------"
        cat $var
        echo "------------------------------------"
    fi
    if [[ ${comando} = "cd" ]] 
    then
        echo "------------------------------------"
        cd $var
        pwd
        echo "------------------------------------"
    fi
done