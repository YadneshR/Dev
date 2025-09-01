#/bin/bash


a=10
b=90

#method 1
c=$((a*b))

echo "$c"

#method 2

let d=$a*$b
echo "$d"

