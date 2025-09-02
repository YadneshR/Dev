#!/bin/bash


FILE="/home/yadneshLinux/Shellpractice/names.txt"

for name in $(cat $FILE)
do
	echo "Name is $name"
done

myArray=(1 2 3 44 55 78 96 )

length=${#myArray[*]}

for (( i=0;i<$length;i++ ))
do 
	echo "Print ${myArray[$i]}"
done

