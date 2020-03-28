#!/bin/bash -x

#Constants
EMPLOYEE_RATE_PER_HOUR=20
IS_FULL_TIME=2
IS_PART_TIME=1

randomCheck=$((RANDOM%3))
if [ $randomCheck -eq $IS_FULL_TIME ]
then
	empHours=8
elif [ $randomCheck -eq $IS_PART_TIME ]
then
	empHours=4
else
	empHours=0
fi
dailyEmpWage=$(($empHours * $EMPLOYEE_RATE_PER_HOUR))
