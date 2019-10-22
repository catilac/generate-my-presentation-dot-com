#!/usr/bin/env bash

dada whattheywantyoutobelieve.pb > dadaout

string=$(cat dadaout)

arr=()
while read -r line; do
   arr+=("$line")
done <<< "$string"

for i in "${arr[@]}"
do
	echo $i
done

rm dadaout
