#!/bin/bash
#declare -a arr=("class1" "class2" "class3" "class4" "class5" "class6" "class7" "class8")


declare -a arr=("class1" "class2" "class3")
#declare -a arr=("class5" "class6" "class7" "class8")


ulimit -t 1000
rm r3*

LANG=en_US

for j in {10..100..10}
do
touch r3.$j

for d1 in "${arr[@]}"
do

for min in {0..10}
do

max=$((min + 1))

echo "=== TRAZA $d1 $min ===" >> r3.$j

for d2 in "${arr[@]}"
do
    echo "DOMINIO $d2" >> r3.$j
   ../../src/compiler_new.py -f -d -v ../../benchmarks/icaps19/blocks/$d2/domain.pddl ../../benchmarks/icaps19/blocks/$d1/ 0 $j -t observation -l $min $max >> r3.$j
done
done
done
done
