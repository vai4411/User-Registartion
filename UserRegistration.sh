#!/bin/bash -x

#Use case 1
#Use case 2

read -p "Enter First Name:" FIRSTNAME
read -p "Enter Last Name:" LASTNAME

PATTERN="^[A-Z]{1}[a-zA-Z]{2,}"
if [[ $FIRSTNAME =~ $PATTERN ]] && [[ $LASTNAME =~ $PATTERN ]]
then
	echo "Name is valid"
else
	echo "Name is invalid"
fi

#Use case 3

read -p "Enter Email Address:" EMAIL

PATTERN="^[0-9a-z]+[+_.-]?[0-9a-z]+[@][a-z]+[.]{1}[a-z]{2,}[.]?[a-z]+$"
if [[ $EMAIL =~ $PATTERN ]]
then
	echo "Email is valid"
else
	echo "Email is invalid"
fi
