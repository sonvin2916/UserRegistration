#! /bin/bash
shopt -s extglob
echo "Welcome to user registration"

function name()
{

	pattern="^[[:upper:]]+([a-z]{3,})"
	if [[ $fname =~ $pattern ]]
	then
		echo "Valid"
	else
		echo "Invalid"
	fi
}
read -p " Enter first name : " fname
name $fname

function lastName()
{

        pattern="^[[:upper:]]+([a-z]{3,})"
        if [[ $lname =~ $pattern ]]
        then
                echo "Valid"
        else
                echo "Invalid"
        fi
}
read -p "Enter last name : " lname
lastName $lname
