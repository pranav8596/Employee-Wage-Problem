#!/bin/bash -x

#Declaration of an array
declare -a empDailyWage

#Constants
EMPLOYEE_RATE_PER_HOUR=20
IS_FULL_TIME=2
IS_PART_TIME=1
MAXIMUM_WORKING_DAYS=20
MAXIMUM_WORKING_HOURS=100

#Variables
totalWorkingDays=0
totalWorkingHours=0

#To get Employee working hours
function getWorkingHours() {
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
	echo $empHours
}

#To get the Daily Wage of the Employee
function getDailyWage() {
	wagesPerDay=$(($employeeHours * $EMPLOYEE_RATE_PER_HOUR))
	echo $wagesPerDay
}

#Calculate wage till the Days and Hours reached 20 and 100
function employeeWageComputation() {
	while [[ $totalWorkingDays -ne $MAXIMUM_WORKING_DAYS && $totalWorkingHours -ne $MAXIMUM_WORKING_HOURS ]]
	do
		((totalWorkingDays++))
		employeeHours="$(getWorkingHours)"
		totalWorkingHours=$(($totalWorkingHours + $employeeHours))
		empDailyWage[$totalWorkingDays]="$(getDailyWage)"
	done
	echo ${!empDailyWage[@]}
	echo ${empDailyWage[@]}
	totalSalery=$(($totalWorkingHours * $EMPLOYEE_RATE_PER_HOUR))
}

#Main
employeeWageComputation
