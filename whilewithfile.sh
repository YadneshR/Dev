#/bin/bash

while read myvar
do
	echo "Value from file $myvar"
done < names.txt
