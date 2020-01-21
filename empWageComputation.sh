#!/bin/bash -x

echo -e "Welcome To EmployeeWage"

#! Declaring Constants
readonly RATE_PER_HOUR=20
readonly EMP_CHECK=$((RANDOM % 3))
readonly PART_TIME=4
readonly FULL_TIME=8

#! Calculating Wage On Employee Type
if [ $EMP_CHECK -eq 0 ]
then
	echo "Employee Present"
	echo "Daily Wage = $((RATE_PER_HOUR * FULL_TIME)) "
elif [ $EMP_CHECK -eq 1 ]
then
	echo "Part Time Employee"
	echo "Daily Wage = $((RATE_PER_HOUR * PART_TIME))"
else
	echo "Employee Absent"
	echo "Daily Wage = 0"
fi
