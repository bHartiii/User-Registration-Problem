#!/bin/bash -x
read -p "Enter First Name - " firstname
pattern="^[A-Z]+[a-zA-Z0-9]{2,}"
emailPattern="^[a-z0-9]{3,}(.[0-9a-z]+)*@[a-z]{2,}.(com|edu)(co.in)*$"
phonePattern="^91 [6-9]{1}[0-9]{9}$"
passwordRule="((?=.*[A-Z])(?=.*[0-9])(?=[^\W]*[\W][^\W]*$)[0-9a-zA-Z].{8,})$"
if [[ $firstname =~ $pattern ]]
then
	read -p "Enter Last Name - " lastname
	if [[ $lastname =~ $pattern ]]
	then
	        read -p "Enter Email - " email
	        if [[ $email =~ $emailPattern ]]
        	then
			read -p "Enter Phone No. - " phone
	                if [[ $phone =~ $phonePattern ]]
        	        then
                	   	read -p "Enter Password - " password
                        	if [[ $password =~ $passwordRule ]]
                        	then
                                	echo "yes"
                        	else
                                	echo "Not Valid Password "
                        	fi
                	else
                        	echo "Not valid Phone number"
                	fi
        	else
                	echo "Not valid email"
        	fi

	else
        	echo "Not valid last name"
	fi
else 
	echo "Not a valid name"
fi

