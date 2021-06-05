#!/bin/bash
declare -A bday

check=$((1+RANDOM%12))
declare -a same_bday

count=0
month=check
for (( i=1; i<=50; i++ ))
do
   bday[$i]=$month
   month=$((1+RANDOM%12))
done

for k in ${!bday[@]};
do
   value=${bday[$k]}
   if [[ $value -eq $check ]]
   then
      same_bday=${bday[$k]}
      ((count++))
   fi
done

echo 'Here are all the people having birthday in '$check' month'
echo ${same_bday[*]}
echo 'number of people = '$count
