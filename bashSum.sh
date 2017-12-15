#!/bin/sh

num1=7
num2=3
let num3=$num1%$num2
echo $num3

expr $num1 % $num2

echo $num1 + $num2 | bc -l
echo $num1+$num2 | bc -l
