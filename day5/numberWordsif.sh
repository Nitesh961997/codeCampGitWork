#!/bin/bash -x
read -p "enter value from 1/10/100/1000" no
if [ $no -eq 1 ] 
	then
		echo Unit;
	elif [ $no -eq 10 ] 
		then	
			echo Ten;
	elif [ $no -eq 100 ]
		then
			echo Hundred;
	elif [ $no -eq 1000 ] 
		then
			echo thousand;
		else
		echo invalid input;
fi
