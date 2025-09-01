#!/bin/bash

#key value array

declare -A myArray

myArray=([name]=Yadnesh [age]=23 [city]=Dholakpur)

echo "Name is ${myArray[name]}"
echo "Age is ${myArray[age]}"
