#!/bin/bash 
#Maddison Loxley
#10526752

if ! [ -f ~/Desktop/attacks.html ] ; then  #if file can't be found echo to the screen "No file to process"
echo "No file to process."
  exit 0
else 

#output the contents of the attacks.html file but pipe it with certain sed argments and awk functions 
cat ~/Desktop/attacks.html | sed -e 's$</td><td>$ $g'\
                                 -e 's$<[^>]*>$$g'\
                                 -e 's$2nd Quarter Attacks on Network$$g'\
                                 -e's$Attack$Attacks$g'\
                                 -e '17,19d;' | awk 'BEGIN {print "Attacks             Instances(Q3)"} 
                                                                 NR>11 { stotal=$2+$3+$4; 
                                                                 printf " "; printf "%-20s %-20s \n", $1, stotal}' 
                                                                                                                                                                                                                                                                                                                                
fi 

exit 0