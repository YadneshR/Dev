#!/bin/bash

# Script should be executed with sudo/root access.


if [[ "${UID}" -ne 0  ]]
then 
	echo "Please run with sudo or root"
	exit 1
fi

# User should provide atleast one argument as username else guide him
#
if [[ "${#}" -lt 1  ]]
then
	echo "Usage : ${0} USER_NAME [COMMENT] ...."
	echo "Create a user with name USER_NAME and COmments fields of comments"
	exit 1
fi

#Store 1st argumentas user name

USER_NAME="${1}"
echo $USER_NAME

#Incase of more than one arguement, store it as comments

shift
COMMENT="${@}"
echo $COMMENT

#Create a password

PASSWORD=$(date +%s%N)
#echo PASSWORD

#Create the user 

useradd -c "${COMMENT}" -m $USER_NAME 


#check if the user is successfully created or not 

if [[ $? -ne 0  ]]
then 
	echo "The account could not be created "
	exit 1
fi


#set password

passwd $PASSWORD $USER_NAME

#Force password

passwd -e $USER_NAME


#Display the username, passwordand the host where the user was created

echo
echo "Username : $USER_NAME"
echo 
echo "Password : $PASSWORD"
echo
echo $(hostname)

