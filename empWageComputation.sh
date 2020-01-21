#!/bin/bash -x

echo -e "Welcome To EmployeeWage"

if  [ $((RANDOM % 2 )) -eq 0 ]
then
	echo "Present"
else
	echo "Absent"
fi
