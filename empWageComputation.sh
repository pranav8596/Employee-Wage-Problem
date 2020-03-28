#!/bin/bash -x

#Constants
EMPLOYEE_RATE_PER_HOUR=20
IS_FULL_TIME=2
IS_PART_TIME=1
MAXIMUM_WORKING_DAYS=20
MAXIMUM_WORKING_HOURS=100

#Variables
totalWorkingDays=0
totalWorkingHours=0

while [[ $totalWorkingDays -ne $MAXIMUM_WORKING_DAYS && $totalWorkingHours -ne $MAXIMUM_WORKING_HOURS ]]
do
	((totalWorkingDays++))
	randomCheck=$((RANDOM%3))
	case $randomCheck in
		$IS_FULL_TIME)
			empHours=8
			;;
		$IS_PART_TIME)
			empHours=4
			;;
		*)
			empHours=0
			;;
	esac
	totalWorkingHours=$(($totalWorkingHours + $empHours))
done
totalSalery=$(($totalWorkingHours * $EMPLOYEE_RATE_PER_HOUR))
