#!/bin/bash
for ((i=1; i<=1000;i++))
do
	time(./atv1.out -o) 2>> atv1out.txt
	time(./atv1C.out -o) 2>> atv1Cout.txt

done
