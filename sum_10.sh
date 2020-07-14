#!/bin/bash

function random(){
        echo $((RANDOM%11))
}
read -p "Enter the number of use cases: " n

count=0
valid=true
while [ $valid ]
do
        x=$( random )
        y=$( random )
        if [ $((x+y)) -lt 10 ]
        then
                ((count++))
                echo $x"+"$y"<10"
        fi
	if [ $((x+y)) -eq 10 ]
	then
		((count++))
		echo $x"+"$y"=10"
	fi
        if [ $count -eq $n ]
        then
                break
        fi
done
