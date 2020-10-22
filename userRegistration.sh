#!/bin/bash -x
read -p "Enter username - " username
pattern="^[A-Z]+[a-zA-Z0-9]{2,}"
if [[ $username =~ $pattern ]]
then
        echo "YES"
else
        echo "NO"
fi
