#!/bin/bash

users=`w -h | awk '{print $1}' | sort | uniq`

echo "{"
echo "\"data\":["

comma=""
for core in $users
do
	echo "    $comma{\"{#USER}\":\"$core\"}"
    comma=","
done

echo "]"
echo "}"
