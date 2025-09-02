#!/bin/bash

#Functions

function print {
	echo "this is a method 1"

}

#call a function 

print

print2() {
	echo "This is method 2"

}
#call function2

print2

#args in functions

myfunc() {
	echo "Welcome $1"


}
myfunc Yadnesh
