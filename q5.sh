#!/bin/bash

#Part A

read x
echo $x | rev 
len=${#x}

#Part B

for i in ${x[*]}
do
   i=$(echo "$i" | tr "0-9a-z" "1-9a-z_")
   echo -n $i
done

echo 


#Part C

p=$(($len/2))
b=${x:0:p}
c=${x:$p:$len}
echo -n $b | rev
echo -n $c
echo
