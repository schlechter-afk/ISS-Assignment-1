#!/bin/bash

read line
replace=" "

arr=(`echo $line | sed -e "s/,/${replace}/g"`)

len=${#arr[*]}

for ((i=0 ; i<$len ; i++))
    do
       for ((j=0 ; j< $len - i - 1; j++))
           do
           if ((${arr[$j]}>${arr[$j+1]}))
           then 
           temp=${arr[$j]}
           arr[$j]=${arr[$j+1]}
           arr[$j+1]=$temp
           else
           continue
           fi
        done
    done
    
echo ${arr[*]}
