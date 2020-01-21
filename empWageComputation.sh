#!/bin/bash -x

echo -e "Welcome To EmployeeWage"

#! Declaring Constants
readonly RATE_PER_HOUR=20
readonly PART_TIME=4
readonly FULL_TIME=8

#! Declaring Variable
day=1

#! Calculating Monthly Wage On Employee Type
while [ $day -le 20 ]
do
	emp_Check=$((RANDOM % 3))
	case $emp_Check in
		0)
			salary=$((salary + $((RATE_PER_HOUR * FULL_TIME)) ))
			;;
		1)
			salary=$((salary + $((RATE_PER_HOUR * PART_TIME)) ))
			;;
		2)
			salary=$((salary + 0))
			;;
	esac
	((day++))
done
echo "Employee Monthly salary = $salary"
