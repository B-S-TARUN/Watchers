#!/bin/bash

filename=$1

python3 $filename <input.txt >output.txt 2>error.txt

if [[ $? -eq 0 ]]
then 
	cat output.txt
fi
