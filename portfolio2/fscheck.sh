#!/bin/bash

#Maddison Loxley
#10526752

getprop() { #open function 
  
 if [[ -e "$file" ]]; then #if the file exists then do the following 
    file_size=$(ls -shR $file) #the size of the file 
    word_count=$(wc -c $file) #the word count of the file 
    last_modified=$(date -r $file) # the date and time the file was last modified 
  fi  
}

read -p 'Enter the file you want to check: ' file
if ! [[ -f $file ]]; then #if the file doesn't exist echo not found 
   echo "File not found"
   exit 1
else
   getprop $file
fi 

echo "The file $file contains $word_count words, is $file_size in size and was last modified $last_modified"

exit 0

