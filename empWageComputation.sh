#!/bin/bash -x

echo -e "Welcome To EmployeeWage"

#! Declaring Constants
WAGE_PER_HOUR=20
FULL_DAY_HOUR=8 

#! Checking Employee Is Present or Not
if  [ $((RANDOM % 2 )) -eq 0 ]
then
	echo "Employee Present"
	echo "Daily Wage = $((WAGE_PER_HOUR * FULL_DAY_HOUR)) "
else
	echo "Employee Absent"
	echo "Daily Wage = 0"
fi
