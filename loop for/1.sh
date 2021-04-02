#!/bin/bash
for n in {1..100..1}
do
	((n % 2 == 0)) && echo "$n" 

done

