#!/bin/bash -x

echo -e "Welcome To EmployeeWage"

#! Declaring Constants
readonly RATE_PER_HOUR=20
readonly PART_TIME=4
readonly FULL_TIME=8

#! Declaring Variable
day=0


#! functin to  get Working Hour Of Employee
function getWorkHours() {
	local hours=0
	emp_Check=$((RANDOM % 2))
	case $emp_Check in
			0)
				hours=$FULL_TIME	
				;;
			1)
				hours=$PART_TIME
				;;
			*)
				hours=0
				;;
	esac
	echo $hours
}

#! Calculating Monthly Wage On Employee Type
while [[ $day -lt 20 && $totalHours -lt 100 ]]
do
	totalHours=$((totalHours + $(getWorkHours)))
	if [ $(getWorkHours) -ne 0 ]
	then
		((day++))
	fi
done

echo "Employee Monthly salary = $((RATE_PER_HOUR * totalHours))"
