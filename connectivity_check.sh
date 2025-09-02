#!bin/bash

read -p "Which website you want to check " site

ping -c 1 $site

#sleep 1s

if [[ $? -eq 0 ]]
then
	echo "Successfully connected to the $site "
else
	echo "Unable to connect to $site"
fi

