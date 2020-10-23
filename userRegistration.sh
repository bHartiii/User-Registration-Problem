#!/bin/bash -x
read -p "Enter First Name - " firstname
pattern="^[A-Z]+[a-zA-Z0-9]{2,}"
if [[ $firstname =~ $pattern ]]
then
	read -p "Enter Last Name - " lastname
	if [[ $lastname =~ $pattern ]]
	then
	        echo "YES"
	else
        	echo "NO"
	fi
else 
	echo "Enter a valid name"
fi

