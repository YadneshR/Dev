#!/bin/bash


read -p "Enter age " age


[[ $age -ge 18 ]] && echo "Adult" || echo "Minor"


