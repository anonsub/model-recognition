#!/bin/bash
#declare -a arr1=("00" "01" "02" "03" "04" "05" "06" "07" "08" "09" "10" "11" "12" "13" "14" "15" "16" "17" "18" "19")
declare -a arr2=("class1" "class2" "class3" "class4" "class5")
#declare -a arr2=("class6" "class7" "class8" "class9")

ulimit -t 1000
rm r1*

LANG=en_US

for d1 in "${arr2[@]}"
do
touch r1.$d1

#echo $j

for min in {0..19}
do

max=$((min + 1))

echo "=== $min ===" >> r1.$d1

for d2 in "${arr2[@]}"
do
   ../../src/FAMA_FSM.py -v ../../benchmarks/icaps19/automata/$d2/domain.pddl ../../benchmarks/icaps19/automata/$d1 -t observation -l $min $max >> r1.$d1

done
done
done
