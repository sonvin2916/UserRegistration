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

function validateEmail()
{
	pattern="^[a-zA-Z0-9._%+-]+\@[a-zA-Z0-9]+\.[A-Za-z]{2,6}"
	if [[ $email =~ $pattern  ]]
	then
		echo "Valid"
	else
		echo "Invalid"
	fi
}
read -p "Enter email :" email
validateEmail $email

function validateNo()
{
	pattern="^[0-9]{2}[[:space:]][0-9]{10}"
	if [[ $no =~ $pattern  ]]
	then
		echo "Valid Phone number"
	else
		echo "Invalid Phone number"
	fi
}
read -p "Enter phone number : " no
validateNo $no

function validatePassword()
{
	pattern="^([A-Za-z0-9@!#$]){8,}$"
	if [[ $pwd =~ $pattern  ]]
	then
		echo "Valid"
	else
		echo "Password should cointain minimum 8 characters"
	fi
}
read -p "Enter password :" pwd
validatePassword $pwd


function validateUpper()
{
	pattern="^([A-Za-z0-9@!#]*)[[:upper:]]+([A-Za-z0-9@!#]*)$"

	if [[ $pwd1 =~ $pattern  ]]
	then
		echo "Valid"
	else
		echo "Password should have atleast 1 uppercase"
	fi

}
read -p "Enter password :" pwd1
validateUpper $pwd1

function validateNumeric()
{
	pattern="^[a-zA-Z@#!]*[0-9]+[a-zA-Z@#!]*$"

	if [[ $pwd2 =~ $pattern  ]]
	then
		echo "Valid"
	else
		 echo "Error : At least one digit mandatory"
	fi
}
read -p "Enter password : " pwd2
validateNumeric $pwd2


function validateSpecial() 
{
	pattern="^([a-zA-Z0-9]*)[^a-zA-Z_0-9\s]([a-zA-Z0-9]*)$"
	if [[ $pwd3 =~ $pattern  ]]
	then
		echo "Valid"
	else
		echo "Error : At least one special character required"
	fi
}
read -p "Enter password : " pwd3
validateSpecial $pwd3





echo ""

echo "-----------------------------------------"
echo ""

function password()
{
	passpattern1="^([a-zA-Z0-9@#!]){8,}$"
	passpattern2="^([a-z0-9@#!]*)[A-Z]+([a-z0-9@#!]*)$"	
	passpattern3="^[a-zA-Z@#!]*[0-9]+[a-zA-Z@#!]*$"
	passpattern4="^([a-zA-Z0-9]*)[^a-zA-Z_0-9\s]([a-zA-Z0-9]*)$"
	if [[ $pwd =~ $passpattern1 ]]
	then
        	if [[ $pwd =~ $passpattern2 ]]
        	then
                	 if [[ $pwd =~ $passpattern3 ]]
                	then
                        	 if [[ $pwd =~ $passpattern4 ]]
                        	then
                                	echo "Success : Valid Password"
                        	else
                                	echo "Error : At least one special character required"
                        	fi
                	else
                        	        echo "Error : At least one digit mandatory"
                	fi
        	else
                	                echo "Error : At least one caps lock required"
        	fi
	else
        	                echo "Error : Password must be of 8 length"
	fi
}
read -p "Enter password :" pwd
password $pwd
