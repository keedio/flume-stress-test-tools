#!/bin/bash

a=0
i=0
lastReaded=0

while read line
do a=$(($a+1))

	while [ ! "$line" = "$i.$a" ]
	do		
		echo $i.$a not found!!
		a=$(($a+1))
		if [ $a -gt 10000 ]
	        then
	                i=$(($i+1))
	                a=1;
	        fi
	done
	
	if [ $a -ge 10000 ] 
	then
		i=$(($i+1))
		a=0;
	fi
done < $1
