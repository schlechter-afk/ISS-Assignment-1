#!/bin/bash
n=11
arr=(21 22 34 1 7 90 101 2 4 8 45)
flag=1;
for (( i = 0; i < $n-1; i++ ))
do
    flag=0;
    for ((j = 0; j < $n-1-$i; j++ ))
    do
        if [[ ${arr[$j+1]} -lt ${arr[$j]} ]]
        then
            temp=${arr[$j]};
            arr[$j]=${arr[$j+1]};
            arr[$j+1]=$temp;
            flag=1;
        fi
    done

    if [[ $flag -eq 0 ]]; then
          break;
    fi
done
echo "Array in sorted order : ${arr[*]} "
