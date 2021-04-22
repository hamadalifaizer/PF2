#!/bin/bash

awk '
    NR>1 {

        if (length($2) -1 >= 8 && ($2) ~ /[[:digit:]]/ && ($2) ~ /[[:upper:]]/) 
        {
            print $2 "\t", "- meets password strength requirements";
        }
        
        else 
        {
            print $2 "\t", "- does NOT meet password strength requirements";
        } 
    
    }' usrpwords.txt

exit 0 
# line 4 - used to skip the first line in the text file.
# line 6 - an if statement where if all the conditions are met then it will print line 7.


