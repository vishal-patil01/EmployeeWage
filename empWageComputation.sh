#!/bin/bash -x

echo -e "Welcome To EmployeeWage"

#! Declaring Constants
readonly RATE_PER_HOUR=20
readonly PART_TIME=4
readonly FULL_TIME=8

#! Declaring Variable
day=0
hours=0
#! Calculating Monthly Wage On Employee Type
while [[ $day -lt 20 && $hours -lt 100 ]]
do
	emp_Check=$((RANDOM % 3))
	case $emp_Check in
		0)
			salary=$((salary + $((RATE_PER_HOUR * FULL_TIME)) ))
			hours=$((hours + FULL_TIME))	
			((day++))
			;;
		1)
			salary=$((salary + $((RATE_PER_HOUR * PART_TIME)) ))
			hours=$((hours + PART_TIME))
			((day++))
			;;
		2)
			salary=$((salary + 0))
			hours=$((hours + 0))
			;;
	esac
done
echo "Employee Monthly salary = $salary"

