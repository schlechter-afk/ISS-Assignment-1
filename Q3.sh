#!/bin/bash
input="$1"
wc -c "$input" | awk '{print $1}'
wc -l "$input" | awk '{print $1}'
wc -w "$input" | awk '{print $1}'
awk '$0="Line No: "NR" - Count of Words: "NF' "$input"
grep -E -o '\w++' "$input" | sort >"new.txt"
count=0
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

