#!/bin/bash

#access the args

echo "This is $1"
echo "This is $2"

echo "number of args are $#"

#for loop to acces the values from arguments
for filename in $@
do 
	echo "Copying file $filename"
done

