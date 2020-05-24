#!/bin/bash

HN=`cat /home/ubuntu3/signal_HN`
A=`cat /home/ubuntu3/signal_a`

array=""


while [[ $j -lt 20 ]]
do
	while read line
	do
        	array[$j]=$line
		j=$(($j+1))
	done < signal_HN
done


Count=0

for ((i=0 ; i < 20 ; i++))
do
	Count=$((Count+1))
	if [ $Count = 10 ]
	then 
		printf "${array[$(($i-9))]}\t${array[$(($i-8))]}\t${array[$(($i-7))]}\t${array[$(($i-6))]}\t${array[$(($i-5))]}\t${array[$(($i-4))]}\t${array[$(($i-3))]}\t${array[$(($i-2))]}\t${array[$(($i-1))]}\t${array[$i]}\n"         
		
		for ((k=0;k<20;k+=2))
		do
			printf "${A:$k:1}\t\t${A:$k:1}\t\t${A:$k:1}\t\t${A:$k:1}\t\t${A:$k:1}\t\t${A:$k:1}\t\t${A:$k:1}\t\t${A:$k:1}\t\t${A:$k:1}\t\t${A:$k:1}\n"
				
		done
		Count=0
		printf "_________________________________________________________________________________________________________________________________________________\n"
	fi
done                   
