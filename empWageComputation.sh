#!/bin/bash -x

#Constants
EMPLOYEE_RATE_PER_HOUR=20

isPresent=1
randomCheck=$((RANDOM%2))
if [ $isPresent -eq $randomCheck ]
then
	echo "Employee is Present"
	empHours=8
else
	echo "Employee is Absent"
	empHours=0
fi
dailyEmpWage=$(($empHours * $EMPLOYEE_RATE_PER_HOUR))
