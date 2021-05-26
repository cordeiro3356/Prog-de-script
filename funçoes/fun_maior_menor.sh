#!/bin/bash

menor(){
read -p "digite um numero inteiro" x

read -p "digite o segundo numero" y

((x < y)) && echo "$x" || echo "$y"
}

maior(){
read -p "digite um numero inteiro" x

read -p "digite o segundo numero" y

((x > y)) && echo "$x" || echo "$y"
}
