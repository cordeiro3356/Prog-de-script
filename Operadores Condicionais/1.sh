#!/bin/bash

read -p "digite um numero inteiro" x

read -p "digite o segundo numero" y

((x < y)) && echo "$x" || echo "$y"

