export PATH=$JACAMO_HOME/scripts:$PATH
{ time timeout 60m jacamo ../workspace/floodsp07/floods.jcm ; } 2>&1 | cat > output/p07/p07temp.out
for f in output/p07/*.out; do ( cat "${f}"; echo) >> ../planners/results/r3/domap/p07.out; done
rm output/p07/*.out
/bin/cp -rf /home/rovane/floods/p07/backup/* /home/rovane/floods/p07
{ time timeout 60m jacamo ../workspace/floodsp07/floods.jcm ; } 2>&1 | cat > output/p07/p07temp.out
for f in output/p07/*.out; do ( cat "${f}"; echo) >> ../planners/results/r4/domap/p07.out; done
rm output/p07/*.out
/bin/cp -rf /home/rovane/floods/p07/backup/* /home/rovane/floods/p07
