#!/bin/bash

echo "Descrição
Os redirecionadores de E/S definem qual é a entrada/saída de um comando. A tabela abaixo mostra alguns exemplos de operadores de E/S."
echo "---------------"
echo "> ou 1>	redireciona para saída"
echo "O comando cat abaixo copia o conteúdo dos arquivos teste1.txt e teste2.txt para o arquivo teste. Caso o arquivo teste não exista, o arquivo é criado. Caso o arquivo teste exista, ele é sobreposto.
cat teste1.txt teste2.txt > teste"
echo "---------------"
echo "<  redireciona para a entrada"
echo "O comando cat abaixo recebe como entrada o arquivo teste.txt e, portanto, mostra na tela o conteúdo deste arquivo.
cat < teste.txt"
echo "---------------"
echo ">>  redireciona para fim de arquivo"
echo "O comando cat abaixo adiciona o conteúdo do arquivo teste3.txt no final do arquivo teste. Caso o arquivo teste não exista, ele é criado.
cat teste3.txt >> teste"
echo "---------------"
echo "<<	redireciona para a entrada e mantém a entrada aberta até que seja digitado algum caractere de EOF (fim de arquivo) como, por exemplo, CTRL+D"
echo "---------------"
echo " >& ou 2>	redireciona a saída de erros"
echo "Suponha que o diretório xxxxx não existe. Portanto, o comando
ls xxxxxx

apresenta uma mensagem de erro. Para direcionar a saída de erro deste comando para o arquivo resultado, basta digitar

ls xxxxxx >& resultado

ou

ls xxxxxx 2> resultado"
echo "---------------"
echo " | redireciona a saída de um comando para a entrada de um outro comando"
echo "Abaixo temos três ações: primeiro, o comando cat exibe o conteúdo do arquivo teste.txt; segundo, o resultado do comando cat é usado como entrada do comando wc que conta o número de linhas do arquivo; e terceiro, o número de linhas do arquivo teste.txt é gravado no arquivo resultado.txt.
cat teste.txt | wc -l > resultado.txt"
echo "---------------"
echo " tee	redireciona o resultado para a saída padrão e para um arquivo, deve ser usado em conjunto com o “|”"
echo " Podemos também usar o comando tee junto com o caractere | para que o resultado de um comando seja redirecionado para a saída padrão e para um arquivo. Por exemplo, suponha que queremos que o arquivo teste.txt seja copiado para o arquivo teste2.txt e que seja também exibido na tela. Então, basta digitarmos
cat teste.txt | tee teste2.txt"


