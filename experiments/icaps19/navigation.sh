#!/bin/bash
declare -a arr=("class1" "class2" "class3" "class4" "class5" "class6" "class7" "class8")


#declare -a arr=("class1" "class2" "class3" "class4")
#declare -a arr=("class5" "class6" "class7" "class8")


ulimit -t 1000
rm r2*

LANG=en_US

for j in {0..100..10}
do
touch r2.$j

for d1 in "${arr[@]}"
do

echo "=== TRAZA $d1 ===" >> r2.$j

for d2 in "${arr[@]}"
do
    echo "DOMINIO $d2" >> r2.$j
   ../../src/compiler_new.py -d -v ../../benchmarks/icaps19/navigation/$d2/domain.pddl ../../benchmarks/icaps19/navigation/$d1/ 0 $j -t observation -l 0 1 -c ../../benchmarks/icaps19/navigation/$d2/filters >> r2.$j

done
done
done
