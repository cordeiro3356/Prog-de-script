#!/bin/bash

read -rp "Arquivo 1: " arq1
read -rp "Arquivo 2: " arq2

(($(wc -l < "${arq1}") > $(wc -l < "${arq2}"))) && echo "${arq1}" || echo "${arq2}"
