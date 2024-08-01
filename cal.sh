#!/bin/bash
echo "Enter two  number:"
read a
read b
echo "Enter the choice:"
echo "1.add"
echo "2.sub"
echo "3.multiple"
echo "4.Divide"
read ch
case $ch in
1)Result = 'echo $a + $b |bc'
;;
2)Result = 'echo $a - $b |bc'
;;
3)Result = 'echo $a * $b |bc'
;;
4)Result = 'echo $a \ $b |bc'
;;
esac
echo "Result"

