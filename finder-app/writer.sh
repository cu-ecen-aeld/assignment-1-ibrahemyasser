#!/bin/bash



if [ "$#" -lt 2 ]
then
	echo "error"	  
	exit 1

fi


writefile=$1
writestr=$2

mkdir -p "$(dirname "$writefile")"
echo "$writestr" > "$writefile"

if [ $? -ne 0 ]
then 
	echo "error"
	exit 1
fi

echo "success"


