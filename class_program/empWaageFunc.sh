#!/bin/bash -x
partTime=2;
fullTime=1;
maxHoursPerMonth=20;
empRatePerHour=20;
numWorkingDays=20;

totalEmpHr=0;
totalWorkingDays=0;

function getWorkHrs()
{
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
echo $empHrs; 
}

while [[ $totalEmpHrs -lt $maxHoursPerMonth &&
	 $totalWorkingDays -lt $numWorkingDays ]]
do

	((totalWorkingDays++))
	empCheck=$((RANDOM%3))
empHrs="$(getWorkHrs $empCheck)"	
	totalEmpHrs=$(($totalEmpHrs+$empHrs))
done
totalSalary=$(($totalEmpHrs*empRatePerHour))
