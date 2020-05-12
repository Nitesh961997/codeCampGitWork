#!/bin/bash -x 
partTime=2;
fullTime=1;
maxHoursPerMonth=50;
empRatePerHour=20;
numWorkingDays=20;

totalEmpHrs=0;
totalWorkingDays=0;

function getWorkHrs()
{
	local empcheck=$1;
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
function getEmpWage(){
	local $empHr=$1
	echo $(($empHrs*$empRatePerHour))
}

while [[ $totalEmpHrs -lt $maxHoursPerMonth && $totalWorkingDays -lt $numWorkingDays ]]
do
	(( totalWorkingDays++ ))
	empCheck=$((RANDOM%3))
	empHrs="$(getWorkHrs $empCheck)"	
	totalEmpHrs=$(($totalEmpHrs+$empHrs))
	dailyWages[$totalWorkingDays]=$(($empHrs*$empRatePerHour))
done
totalSalary=$(($totalEmpHrs*empRatePerHour))
