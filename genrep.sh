#!/bin/bash
if ! [ -f attacks.html ]; then 
    echo "no such file"
    exit 0
fi
pre="<tr><td>"
post="<\/td><\/tr>"
mid="<\/td><td>"

cat attacks.html | grep "<td>" | sed -e "s/^$pre//g; s/$post$//g; s/$mid/ /g; s/<[^>]\+>//g" |
awk 'BEGIN {print "Attacks\t\tInstances(Q3)"} { total=($2+$3+$4); printf $1 "\t\t%d\n", total } ' 


exit 0

# line 6-8 - are variable which are html tags in the attacks.html file.
# line 10 - first cat the attacks.html file and then grep all lines that contain "<td>" then pipe to sed which will 
# remove all text which contain the variables. first the pre and the post variable which is removed,
# then the mid variable is replaced with a space, then any left over html tags will be removed using the s/<[^>]\+>//g. and pipe to...
# line 11 - awk statement where the first writes Attacks    Instances(Q3) using the BEGIN, then calculates the total of $2+$3+$4, then
# and finally prints the $1 and the variable total.


