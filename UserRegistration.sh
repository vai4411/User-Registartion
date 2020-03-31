#!/bin/bash -x

read -p "Enter Name:" FIRSTNAME

PATTERN=^[A-Z]{1}[a-zA-Z]{2,}
if [[ $FIRSTNAME =~ $PATTERN ]]
then
	echo "Name is valid"
else
	echo "Name is invalid"
fi
