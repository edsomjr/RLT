#!/usr/bin/env bash

if [ $# -lt 2 ]
then
	echo "MAX or MIN missing"
	exit 1
fi

i=$1

while [ $i -ge $2 ]
do
	echo "$i"
	i=`expr $i - 1`
done
