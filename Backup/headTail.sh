#!/bin/bash/ -x
head=1
tail=0
outcome=$((RANDOM%2))
if [ $outcome -gt $tail ]
	then 
		echo heads
	else
		echo tails
fi
	
