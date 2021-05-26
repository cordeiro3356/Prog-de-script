#!/bin/bash

source fun_maior_menor.sh

var_maior=$(maior $(cat $1))

var_menor=$(menor $(cat $1))

echo "O Maior Valor é : $var_maior "

echo "O Menor Valor é : $var_menor "