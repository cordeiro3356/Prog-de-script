#!/bin/bash

a=$1
b=$2
for ((n = $a; n <$b; n++)); do
	((n % 2 ==0)) && echo "$n"
done


