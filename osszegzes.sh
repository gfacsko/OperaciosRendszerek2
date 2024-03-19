#!/bin/bash

# Tömb deklaráció
declare -a A

# Feltöltöm a tömböt véletlenszámokkal
for ((i=0; i<20; i++))
do
	A[$i]=$RANDOM
done

# A tömb elemei
echo ${A[@]}

S=$((0))

# Összegzés
for x in "${A[@]}"
do
	S=$((S+x))
done

echo $S
