#!/bin/bash

#String operations

myvar="Hey buddy how are you !!"

myvarlength=${#myvar}
echo "length is $myvarlength"
echo "$myvar"

#upper and lower case
echo "upper case----- ${myvar^^}"
echo "lower case----- ${myvar,,}"

#replacement
newvar=${myvar/buddy/Yadnesh}

echo "$newvar"

#to slice


echo "After slice ${myvar:4:5}"

