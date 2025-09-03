#!/bin/bash
#Generating a random number netween 1 to 6

No=$(( $RANDOM % 6 + 1 ))
echo "Number is $No"
