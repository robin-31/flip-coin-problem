#!/bin/bash -x
#hello to my flip coin problem
isHead=1
flipcoin=$((RANDOM%2))
	if [ "$isHead" -eq "$flipcoin" ]
	then
		echo "it's head you are winner"
	else
		echo "it's tail you are losser"
	fi
