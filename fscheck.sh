#!/bin/bash

getprop()
{ 
    size1=$(ls -l $fname1 | awk '{printf "%.2f\n", $5/1024}')
    word1=$(cat $fname1 | wc -w) 
    datem=$(ls -lF $fname1 --time-style="+%d/%m/%Y %T" | awk '{print $6" "$7}')
    

    echo "The file $fname1 contains $word1 words and is ${size1}K in size and was last modified $datem"

}
read -p "Enter name of file here: " fname1

getprop $fname1

exit 0 

# line 3 - start of the function 
# line 5 - calculates the size of the filename by using the command ls -l $fname1 which gets all the details of the file
# and then pipe it to awk which will print the $5 which is the size in the ls -l command and then divides the output by 1024 for 
# an kb value because ls -l shows in bytes, the output is then reduced to 2 decimal places.

# line 6 - gets the word count of the file by using cat then getting a word count through wc -w.

# line 7 - gets the last modified date of the file using ls -lF which allows to change the time and date format then pipe to awk
# which will print $6 and $7 with the changed date and time format. 

# line 13 - gets user input for the file name which will be processed throughout the script.

# line 15 - runs the function with the filename.
