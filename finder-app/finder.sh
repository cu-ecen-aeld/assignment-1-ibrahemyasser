#!/bin/bash


if [ "$#" -lt 2 ]
    then
        echo "error"
        exit 1

fi 

filesdir=$1
searchstr=$2

if [ ! -d "$filesdir" ]
    then 
        echo "error"
        exit 1
fi

numFiles=$(find "$filesdir" -type f | wc -l)
numOfLines=$(grep -r "$searchstr" "$filesdir" | wc -l)

echo "The number of files are $numFiles and the number of matching lines are $numOfLines"
