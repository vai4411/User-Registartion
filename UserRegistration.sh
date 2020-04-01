#!/bin/bash -x

#Use case 1
#Use case 2

read -p "Enter First Name:" FIRSTNAME
read -p "Enter Last Name:" LASTNAME

NAME=0
PATTERN="^[A-Z]{1}[a-zA-Z]{2,}"
if [[ $FIRSTNAME =~ $PATTERN ]] && [[ $LASTNAME =~ $PATTERN ]]
then
	echo "Name is valid"
	NAME=1
else
	echo "Name is invalid"
fi

#Use case 3

read -p "Enter Email Address:" EMAIL

EMAIL_VAL=0
PATTERN="^[0-9a-z]+[+_.-]?[0-9a-z]+[@][a-z]+[.]{1}[a-z]{2,}[.]?[a-z]+$"
if [[ $EMAIL =~ $PATTERN ]]
then
	echo "Email is valid"
	EMAIL_VAL=1
else
	echo "Email is invalid"
fi

#Use case 4

read -p "Enter Mobile Number:" MOBILE_NUMBER

NUMBER=0
PATTERN="^[0-9]{2}[ ][0-9]{10}"
if [[ $MOBILE_NUMBER =~ $PATTERN ]]
then
	echo "Mobile Number is valid"
	NUMBER=1
else
	echo "Mobile Number is invalid"
fi

#Use case 5
#Use case 6
#Use case 7
#Use case 8

#if [ $NAME -eq 1 ] && [ $NUMBER -eq 1 ] && [ $EMAIL_VAL -eq 1 ] 
#then
	read -p "Enter the Password:" PASSWORD

	PATTERN="[0-9A-Za-z]{8,}"
	if [[ $PASSWORD =~ $PATTERN ]] && [[ $PASSWORD == *[[:upper:]]* ]] && [[ $PASSWORD == *[[:digit:]]* ]] && [[ ! $PASSWORD == ^[[:alnum:]]+ ]]
	then	
		echo "Password is valid"
	else
		echo "Password is invalid"
	fi
#else
#	echo "Conditions is invalid"
#fi
