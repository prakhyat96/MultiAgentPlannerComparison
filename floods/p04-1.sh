export PATH=$JACAMO_HOME/scripts:$PATH
{ time timeout 60m jacamo ../workspace/floodsp04/floods.jcm ; } 2>&1 | cat > output/p04/p04temp.out
for f in output/p04/*.out; do ( cat "${f}"; echo) >> ../planners/results/r1/domap/p04.out; done
rm output/p04/*.out
/bin/cp -rf /home/rovane/floods/p04/backup/* /home/rovane/floods/p04
{ time timeout 60m jacamo ../workspace/floodsp04/floods.jcm ; } 2>&1 | cat > output/p04/p04temp.out
for f in output/p04/*.out; do ( cat "${f}"; echo) >> ../planners/results/r2/domap/p04.out; done
rm output/p04/*.out
/bin/cp -rf /home/rovane/floods/p04/backup/* /home/rovane/floods/p04
