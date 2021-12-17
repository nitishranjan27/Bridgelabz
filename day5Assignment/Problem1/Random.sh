#!/usr/bin/env bash
for _ in {1..10};do
((A=RANDOM%6+1, B=RANDOM%6+1, C=RANDOM%6+1, D=RANDOM%6+1, E=RANDOM%6+1))
echo A=$A B=$B C=$C D=$D E=$E  
echo "SumOFNumber=$((A+B+C+D+E))"
echo "Average of number =$((A+B+C+D+E/5))"
done