#!/usr/bin/env bash

if [ $# -lt 2 ]
then
	echo "MAX or MIN missing"
	exit 1
fi

if [ $2 -gt $1 ]
then
	i=$1
	j=$2

	while [ $i -le $j ]
	do
		echo "$i"
		i=`expr $i + 1`
	done

elif [ $1 = $2 ]
then
	echo "$1"
else
	i=$1
	j=$2

	while [ $i -ge $j ]
	do
		echo "$i"
		i=`expr $i - 1`
	done
fi
