#!/bin/bash -x

#Use case 1
read -p "Enter First Name:" FIRSTNAME

PATTERN=^[A-Z]{1}[a-zA-Z]{2,}
if [[ $FIRSTNAME =~ $PATTERN ]]
then
	echo "First Name is valid"
else
	echo "First Name is invalid"
fi
