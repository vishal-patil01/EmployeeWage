#!/bin/bash  

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
	esac
	echo $hours
}
#! calculate Daily Wage
function getDailyWage() {
	local hoursInDay=$1
	echo $((RATE_PER_HOUR * hoursInDay))
}

#! Calculating Monthly Wage 
while [[ $day -lt 20 && $totalHours -lt 100 ]]
do
		 workHour=$(getWorkHours)
		totalHours=$((totalHours + workHour))
		dailySalary[day]=$(getDailyWage $workHour)
		totalSalary=$((totalSalary + ${dailySalary[$day]}))
		echo -e "day $day salary ${dailySalary[$day]} \n"
		((day++))
done
echo "Day Wise Salary = ${dailySalary[@]}"
echo "Employee Monthly salary = $totalSalary"
