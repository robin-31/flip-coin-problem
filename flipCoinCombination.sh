#!/bin/bash -x
#hello to my flip coin problem
read -p "enter how many times you want to flip a coin :" x
isHead=1
declare -A toss
declare -A doublettoss
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
	 flipcoin1=$((RANDOM%4))
                if [ "1" -eq "$flipcoin1" ]
                then
                        echo "it's head you are winner"
                        doublettoss[$i]="HH"
		elif [ "2" -eq "$flipcoin1" ]
		then
			echo "it's HT"
			doublettoss[$i]="HT"
		elif [ "3" -eq "$flipcoin1" ]
                then
                        echo "it's TH"
                        doublettoss[$i]="TH"

                else
                        echo "it's tail you are losser"
                        doublettoss[$i]="TT"
                fi

done
echo ${!toss[@]}
echo ${toss[@]}
echo ${!doublettoss[@]}
echo ${doublettoss[@]}
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
headheadcounter=0
tailtailcounter=0
headtailcounter=0
tailheadcounter=0

for i in ${doublettoss[@]}
do
	if [ "$i" == "HH" ]
	then
		((headheadcounter++))
	elif [ "$i" == "TT" ]
	then
		((tailtailcounter++))
	elif [ "$i" == "HT" ]
	then
		((headtailcounter++))
	else
		((tailheadcounter++))
	fi
done

echo $headheadcounter $tailtailcounter $headtailcounter $tailheadcounter

hh=$(( (headheadcounter*100)/x ))
tt=$(( (tailtailcounter*100)/x ))
ht=$(( (headtailcounter*100)/x ))
th=$(( (tailheadcounter*100)/x ))










