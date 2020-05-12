#!/bin/bash -x
read -p "Enter the nth value= " n;
result=1;
for (( i=1; i<=n; i++ ))
	do 
		result=$(($result*i))
	done
echo $n!=$(($result))
