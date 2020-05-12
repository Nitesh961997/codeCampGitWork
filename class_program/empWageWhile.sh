#!/bin/bash -x
partTime=2;
fullTime=1;
maxHoursPerMonth=10;
empRatePerHour=20;
numWorkingDays=20;

totalEmpHr=0;
totalWorkingDays=0;

while [[ $totalEmpHr -lt $maxHoursPerMonth &&
	 $totalWorkingDays -lt $numWorkingDays ]]
do
	((totalWorkingDays++))
	empCheck=$((RANDOM%3))
	case $empCheck in
		$fullTime)
			empHrs=8
			;;
		$partTime)
			empHrs=4
			;;
		*)
			empHrs=0
			;;
	esac
	totalEmpHrs=$(($totalEmpHrs+$empHrs))
done
totalSalary=$(($totalEmpHrs*empRatePerHour))
