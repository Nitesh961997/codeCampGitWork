#!/bin/bash -x
limitWin=200
win=0
loss=0
amount=100
limitLoss=0
i=0
#for random value 1 is win and 0 is loss
while [[ $amount -lt $limitWin && $amount -gt $limitLoss ]]
	do
		((i++)) 
		result=$((RANDOM%2))
	if [ $result -eq 1 ]
		then 
			amount=$(($amount+1));
			((win++))
			echo $amount 
	else
		amount=$(($amount-1));
		echo $amount
		((loss++))
	fi


	done
if [ $amount -eq $limitWin ]
	then
		echo winner
	else
		echo losser
fi
echo wins-$win
echo losses-$loss
