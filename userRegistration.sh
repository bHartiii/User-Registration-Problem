#!/bin/bash -x
read -p "Enter First Name - " firstname
pattern="^[A-Z]+[a-zA-Z0-9]{2,}"
emailPattern="^[a-z0-9]{3,}(.[0-9a-z]+)*@[a-z]{2,}.(com|edu)(co.in)*$"
if [[ $firstname =~ $pattern ]]
then
	read -p "Enter Last Name - " lastname
	if [[ $lastname =~ $pattern ]]
	then
	        read -p "Enter Email - " email
	        if [[ $email =~ $emailPattern ]]
        	then
			echo "yes"
        	else
                	echo "Enter valid email"
        	fi

	else
        	echo "Enter the valid last name"
	fi
else 
	echo "Enter a valid name"
fi

