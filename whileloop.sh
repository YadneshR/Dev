#!/bin/bash

#while loop execution


count=0
num=10

while [[ $count -le $num  ]]
do 
	echo "Value is $count"
	let count++
done

