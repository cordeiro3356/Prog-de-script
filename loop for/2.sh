#!/bin/bash

read -p "digite um números " a 
read -p "digite um números " b

count=0

for ((i=a;i<=b;i++)); do
	count=$((count + i))
done

echo "$count"
