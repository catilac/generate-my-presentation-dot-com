#!/usr/bin/env bash

dada whattheywantyoutobelieve.pb > dadaout

string=$(cat dadaout)

arr=()
while read -r line; do
   arr+=("$line")
done <<< "$string"

mkdir images

for i in "${arr[@]}"
do
	echo ${!arr[$i]} :  $i
done

rm dadaout
rm -r images
