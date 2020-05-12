#!/bin/bash -x
read -p "Enter the nth value= " n;
result=1;
for (( i=1; i<n; i++ ))
	do 
		result=$(($result*2))
		echo 2^$i "    " $result
	done
