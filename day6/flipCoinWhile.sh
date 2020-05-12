#!/bin/bash -x
heads=0
tails=0
i=0
while [[ $heads -lt 11 && $tails -lt 11 ]]
do
((i++)) 
result=$((RANDOM%2))
if [ $result -eq 1 ]
then 
	heads=$(($heads+1));
	echo $heads
else
	tails=$(($tails+1));
	echo $tails
fi


done	
if [ $heads -eq 11 ]
then
	echo heads in winner
else 
	echo tails is winner
fi
