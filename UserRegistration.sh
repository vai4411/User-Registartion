#!/bin/bash -x

#Use case 1
#Use case 2

read -p "Enter First Name:" FIRSTNAME
read -p "Enter Last Name:" LASTNAME

PATTERN=^[A-Z]{1}[a-zA-Z]{2,}
if [[ $FIRSTNAME =~ $PATTERN ]] && [[ $LASTNAME =~ $PATTERN ]]
then
	echo "Name is valid"
else
	echo "Name is invalid"
fi


