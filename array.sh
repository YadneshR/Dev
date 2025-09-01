#!/bin/bash
#Arrays



myArray=(1 25 3.5 Hello "Yadnesh")

echo "${myArray[@]:3:4}"
#length of array 

echo "length of array ${#myArray[*]}"

#update array

myArray+=(new value "i love Devops")

echo "${myArray[*]}"
echo "New updated size is ${#myArray[*]}"
