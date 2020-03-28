#!/bin/bash -x

#Constants
EMPLOYEE_RATE_PER_HOUR=20
IS_FULL_TIME=2
IS_PART_TIME=1

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
dailyEmpWage=$(($empHours * $EMPLOYEE_RATE_PER_HOUR))
