#!/bin/bash -x
read -p "Enter First Name - " firstname
read -p "Enter Last Name - " lastname
read -p "Enter Email - " email
read -p "Enter Phone No. - " phone
read -p "Enter Password - " password

pattern="^[A-Z]+[a-zA-Z0-9]{2,}"
emailPattern="^[a-z0-9]{3,}(.[0-9a-z]+)*@[a-z]{2,}.(com|edu)(co.in)*$"
phonePattern="^91 [6-9]{1}[0-9]{9}$"
passwordRule="^[a-z0-9]{3,}(.[0-9a-z]+)*@[a-z0-9]{1,}.([a-z]{2,})(.([a-z]{2,})){0,1}$"
if [[ $firstname =~ $pattern ]]
then
	echo "First Name correct."
fi
if [[ $lastname =~ $pattern ]]
then 
	echo "Last Name correct"
fi
if [[ $email =~ $emailPattern ]]
then
	echo "Email id is correct"
fi
if [[ $phone =~ $phonePattern ]]
then
	echo "Phone No is correct."
fi
if [[ $password =~ $passwordRule ]]
then
      	echo "Password is correct"
fi


