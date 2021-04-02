#!/bin/bash

dir=${1}
echo "listando $dir"
cd $dir
for n in *
do
	wc -l $n >> cache.txt 2>/dev/null
done

sort -rn cache.txt 
rm cache.txt



