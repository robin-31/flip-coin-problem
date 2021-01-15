#!/bin/bash -x
#hello to my flip coin problem
read -p "enter how many times you want to flip a coin :" x
isHead=1
declare -A toss
counter=0
for (( i=1; i<=x; i++ ))
do
	flipcoin=$((RANDOM%2))
		if [ "$isHead" -eq "$flipcoin" ]
		then
			echo "it's head you are winner"
			toss[$i]="H"
		else
			echo "it's tail you are losser"
			toss[$i]="T"
		fi
done
echo ${!toss[@]}
echo ${toss[@]}
headcounter=0
tailcounter=0

for i in ${toss[@]}
do
	if [ "$i" == "H" ]
	then
		((headcounter++))
	else
		((tailcounter++))
	fi
done
echo $headcounter
echo $tailcounter

headpercentage=$(( (headcounter*100)/x ))
tailpercentage=$(( (tailcounter*100)/x ))

echo $headpercentage
echo $tailpercentage











