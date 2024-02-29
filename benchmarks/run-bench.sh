#!/bin/bash

ulimit -t 900
ulimit -v 4194304

curdir=`pwd`/benchmarks
#dirn=`dirname $0`
#dir="$curdir/$dirn"

domains="AUV HomeRobot"
num=5

rm -r $curdir/results

mkdir $curdir/results

for d in $domains
do 

mkdir $curdir/results/$d

#VLES
for (( i=1;i<=$num;i++ ))
do
/usr/bin/time -p -o $curdir/results/$d/res_waitfor$i.time ./waitfor $curdir/$d/domain.pddl $curdir/$d/problem$i.pddl > $curdir/results/$d/out_waitfor$i.out
done

#FOND (update the path to the PRP planner)
for (( i=1;i<=$num;i++ ))
do
/usr/bin/time -p -o $curdir/results/$d/res_fond$i.time ~/Planners/PRP/src/prp $curdir/FOND/$d/fond-domain-problem$i.pddl $curdir/FOND/$d/fond-problem-problem$i.pddl > $curdir/results/$d/out_fond$i.out
done

done


d="AUV-backandforth"
mkdir $curdir/resuts/$d

# VLES (negative example)
for (( i=1;i<=$num;i++ ))
do
/usr/bin/time -p -o $curdir/results/$d/res_waitfor$i.time ./waitfor $curdir/$d/domain.pddl $curdir/$d/problem$i.pddl > $curdir/results/$d/out_waitfor$i.out
done

