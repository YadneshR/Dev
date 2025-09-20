#!/bin/bash

# Script should be executed with sudo/root access.

if [[ "${UID}" -ne 0  ]]
then 
	echo "Please run with sudo or root"
	exit 1
fi

# User should provide atleast two arguments: username and email
if [[ "${#}" -lt 2  ]]
then
	echo "Usage : ${0} USER_NAME EMAIL [COMMENT] ...."
	echo "Create a user with name USER_NAME, EMAIL and Comments"
	exit 1
fi

# Store 1st argument as username
USER_NAME="${1}"
echo "Username: ${USER_NAME}"

# Store 2nd argument as email
EMAIL="${2}"
echo "Email: ${EMAIL}"

# Shift twice to capture comments (if any)
shift 2
COMMENT="${@}"
echo "Comment: ${COMMENT}"

# Create a password
PASSWORD=$(date +%s%N)

# Create the user
useradd -c "${COMMENT}" -m $USER_NAME 

# check if the user is successfully created or not 
if [[ $? -ne 0  ]]
then 
	echo "The account could not be created "
	exit 1
fi

# set password
echo "${USER_NAME}:${PASSWORD}" | chpasswd

# Force password change on first login
passwd -e $USER_NAME

# Display details
echo
echo "Username : $USER_NAME"
echo "Password : $PASSWORD"
echo "Host     : $(hostname)"
echo "Email    : $EMAIL"
echo "Comment  : $COMMENT"

# ------------------------------
# Mail functionality
# ------------------------------
MAIL_SUBJECT="New User Created: ${USER_NAME} on $(hostname)"
MAIL_BODY="Username: ${USER_NAME}
Password: ${PASSWORD}
Host: $(hostname)
Comments: ${COMMENT}"

echo "${MAIL_BODY}" | mail -s "${MAIL_SUBJECT}" "${EMAIL}"

