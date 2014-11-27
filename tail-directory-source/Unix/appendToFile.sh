#!/bin/bash

if [ "$#" -lt 1 ]
then
   echo "Arguments less than 1"
   exit 1
fi

rm $1*

counter=0
touch $1

while [ $counter -lt 10 ]
do
	i=0
	while [ $i -lt 10000 ]
	do
		i=`expr $i + 1`
		echo $counter.$i >> $1
	done


        if [ $counter -lt 10 ]
        then
	        for (( j=$counter; j>0; j-- ))
	        do
		    mv $1.`expr $j - 1` $1.$j
	       done
	
		if [ $counter -lt 10 ]
		then
		   mv $1 $1.0
		   touch $1 
		fi
	fi
	
	counter=`expr $counter + 1`
done
