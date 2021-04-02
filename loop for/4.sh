#!/bin/bash

for n in "$@"; do
	echo -en "$n" 
	[[ -e ${n} ]] && echo " SIM" || echo " NAO"
done
