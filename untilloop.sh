#!bin/bash

#Until loop script


a=10

until [[ $a -eq 1 ]]
do
	echo "value of $a"
	let a--
done

