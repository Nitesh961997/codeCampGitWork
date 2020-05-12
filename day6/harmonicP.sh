#!/bin/bash -x
read -p "Enter the nth value= " n;
result=1/1;
for (( i=2; i<=n; i++ ))
	do
		result=$result+1/$i	
	done
echo $result
