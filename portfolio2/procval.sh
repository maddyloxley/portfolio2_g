#!/bin/bash

#Maddison Loxley
#10526752

filename=values.txt #placing the textfile values.txt into a variable named filename
declare -a values #declare an array named values
mapfile -t values < $filename #populate array with values in values.txt
len=${#values[*]}

for (( i=0; i<${len}; i++ )); do #for the values list do the following 
    if [[ "${#values[$i]}" =~ ^[[:digit:]]*$ ]]; then #if the variable consists of numbers only echo numbers only
      echo -e "$(($i+1))\t is comprised of numbers only"
    elif [[ "${#values[$i]}" =~ ^[[:alpha:]]*$ ]]; then #if the variable consists of letters only echo letters only
      echo -e "$(($i+1))\t is comprised of letters only" 
    else 
      echo -e "$(($i+1))\t is comprised of numbers and letters"  #and if it's neither of the above echo that it's comrpised of numbers and letters 
    fi
done

exit 0
