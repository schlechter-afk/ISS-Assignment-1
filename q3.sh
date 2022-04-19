#!/bin/bash
input="$1"

#Part A
wc -c "$input" | awk '{print $1}'

#Part B
wc -l "$input" | awk '{print $1}'

#Part C
wc -w "$input" | awk '{print $1}'

#Part D
awk '$0="Line No: "NR" - Count of Words: "NF' "$input"

#Part E
grep -E -o '\w++' "$input" | sort >"new.txt"
uniq -c "new.txt" > "count.txt"
while read -r line;
do
arr=($line)
if (($((${arr[0]}-1))==0))
then
continue
else
echo "Word : ${arr[1]}  - Count of Repetitions : $((${arr[0]}-1))"
fi
done < "count.txt"
rm "new.txt"
rm "count.txt"
