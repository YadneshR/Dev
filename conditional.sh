#!/bin/bash

read -p "Enter your marks " marks

if [[ $marks -ge 80 ]]
then
	echo "You are pass with first class"
elif [[ $marks -ge 60 ]]
then
	echo "You are pass 2class"
elif [[ $marks -ge 40 ]]
then
	echo "You are only pass"
else
	echo "You are fail"
fi
