#!/usr/bin/env bash

m=5;
while [ $m -gt 0 ]
do
	echo "$m"
	m=`expr $m - 1`
done
