#!/bin/bash -x
read -p  "enter no for month" month;
#MONTHS[] = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31}
if [[ $month -eq 1 || $month -eq 3 || $month -eq 5 || $month -eq 7 || $month -eq 8 || $month -eq 10 || $month -eq 12 ]]
	then
		read -p "enter a day of month max 31" day;
	elif [[ $month -eq 4 || $month -eq 6 || $month -eq 9 || $month -eq 11 ]]
		then
			read -p "enter a day of month max 30" day;
	else
		read -p "enter a day of the month 28" day;
fi
if [[ $month -gt 2 && $month -lt 7 ]]
	then 
		if [ $month -eq 3 ]
			then 
			if [ $day -gt 19 ]
				then
					echo true
				else
					echo false
			fi
		fi

		if [ $month -eq 6 ]
			then 
			if [ $day -lt 21 ]
				then
					echo true
				else
					echo false
			fi
		fi
	else
		echo false
fi
