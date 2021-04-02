#!/bin/bash

for n in *
do
	wc -l $n >> cache.txt
done

sort -rn cache.txt
rm cache.txt


