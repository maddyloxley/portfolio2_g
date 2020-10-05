#!/bin/bash

#Maddison Loxley
#10526752

 awk   'NR>1  
        /[A-Z]/&&/[0-9]/&&/[-ge 8]/{print $2,"[meets password strength requirements]";next} 
        {print $2,"[does NOT meet password strength requirements]"}' ~/Desktop/usrpwords.txt
#if the password has one capital letter, has a digit, and has 8 or more characters echo that it meets strength requirements, if not echo that it doesn't                                             
                                   

exit 0