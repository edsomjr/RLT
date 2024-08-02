#!/usr/bin/env bash

if [ $1 -le $2 ]; then
	seq $1 $2
elif [ $1 -gt $2 ]; then
	seq $1 -1 $2
fi
