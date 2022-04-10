#!/bin/bash
read string
reverse=""
len=${#string}
idx=$((len/2))
for (( i=$idx-1; i>=0; i-- ))
do
reverse="$reverse${string:$i:1}"
done
for (( i=$idx; i<=$len-1; i++ ))
do
reverse="$reverse${string:$i:1}"
done
echo $reverse
