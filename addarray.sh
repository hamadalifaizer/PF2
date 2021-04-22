#!/bin/bash

ass1=(12 18 20 10 12 16 15 19 8 11) # first array 
ass2=(22 29 30 20 18 24 25 26 29 30) # second array

len=${#ass1[@]} # gets the length of an array

for student in $(seq $len); do # c-style loop which uses the seq command to list numbers in len from first to last
    index=$(($student -1))
    sum=$(( ${ass1[$index]} + ${ass2[$index]} )) # adds each element in the array
    echo -e "Student_$student Result:\t$sum"
done

exit 0 