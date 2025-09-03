#!/bin/bash


FU=$(df -H | egrep -v "Filesystem|tmpfs" | grep "sda2"| awk '{print $5}'| tr -d %)
TO="yadneshishere01@gmail.com"

if [[ $FU -ge 80  ]]
then
	echo "Warning, disk space is low -$FU %" | mail -s "DISK SPACE ALERT !" $TO
else
	echo "Sufficient disk space" | mail -s "DISK SPACE ALERT -$FU % !" $TO

fi

