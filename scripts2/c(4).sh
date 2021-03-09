#!/bin/bash

a=$(cat ${1} | wc -l)
b=$(cat ${2} | wc -l)
c=$(cat ${3} | wc -l)

python -c "print (${a} + ${b} + ${c})"
