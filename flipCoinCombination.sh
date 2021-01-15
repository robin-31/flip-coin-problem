#!/bin/bash -x
#hello to my flip coin problem
read -p "enter how many times you want to flip a coin :" x
isHead=1
declare -A toss
declare -A doublettoss
declare -A triplettoss
counter=0
for (( i=1; i<=x; i++ ))
do
	flipcoin=$((RANDOM%2))
		if [ "$isHead" -eq "$flipcoin" ]
		then
			toss[$i]="H"
		else
			toss[$i]="T"
		fi
	
	 flipcoin1=$((RANDOM%4))
                if [ "1" -eq "$flipcoin1" ]
                then
                        doublettoss[$i]="HH"
		elif [ "2" -eq "$flipcoin1" ]
		then
			doublettoss[$i]="HT"
		elif [ "3" -eq "$flipcoin1" ]
                then
                        doublettoss[$i]="TH"
		else
                        doublettoss[$i]="TT"
                fi

	 flipcoin2=$((RANDOM%8))
                if [ "1" -eq "$flipcoin2" ]
                then
                        triplettoss[$i]="HHH"
                elif [ "2" -eq "$flipcoin2" ]
                then
                        triplettoss[$i]="HHT"
                elif [ "3" -eq "$flipcoin2" ]
                then
                        triplettoss[$i]="HTT"
		elif [ "4" -eq "$flipcoin2" ]
                then
                        triplettoss[$i]="TTT"
                elif [ "5" -eq "$flipcoin2" ]
                then
                        triplettoss[$i]="TTH"
		elif [ "6" -eq "$flipcoin2" ]
                then
                        triplettoss[$i]="THT"
		elif [ "7" -eq "$flipcoin2" ]
                then
                        triplettoss[$i]="HTH"
		else
                        triplettoss[$i]="THH"
                fi


done
echo ${!toss[@]}
echo ${toss[@]}
echo ${!doublettoss[@]}
echo ${doublettoss[@]}
echo ${!triplettoss[@]}
echo ${triplettoss[@]}

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

hhhcounter=0
tttcounter=0
hhtcounter=0
httcounter=0
hthcounter=0
tthcounter=0
thhcounter=0
thtcounter=0
for i in ${triplettoss[@]}
do
        if [ "$i" == "HHH" ]
        then
                ((hhhcounter++))
        elif [ "$i" == "HHT" ]
        then
                ((hhtcounter++))
        elif [ "$i" == "HTT" ]
        then
                ((httcounter++))
	elif [ "$i" == "HTT" ]
        then
                ((httcounter++))
	elif [ "$i" == "HTH" ]
        then
                ((hthcounter++))
	elif [ "$i" == "TTT" ]
        then
                ((tttcounter++))
	elif [ "$i" == "TTH" ]
        then
                ((tthcounter++))
        elif [ "$i" == "THH" ]
        then
                ((thhcounter++))
	else
                ((thtcounter++))
        fi
done

echo $hhhcounter $hhtcounter $httcounter $hthcounter $tttcounter $tthcounter $thhcounter $thtcounter

hhh=$(( (hhhcounter*100)/x ))
htt=$(( (httcounter*100)/x ))
hht=$(( (hhtcounter*100)/x ))
hth=$(( (hthcounter*100)/x ))
ttt=$(( (tttcounter*100)/x ))
tth=$(( (tthcounter*100)/x ))
thh=$(( (thhcounter*100)/x ))
tht=$(( (thtcounter*100)/x ))










