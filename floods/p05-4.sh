export PATH=$JACAMO_HOME/scripts:$PATH
{ time timeout 60m jacamo ../workspace/floodsp05/floods.jcm ; } 2>&1 | cat > output/p05/p05temp.out
for f in output/p05/*.out; do ( cat "${f}"; echo) >> ../planners/results/r7/domap/p05.out; done
rm output/p05/*.out
/bin/cp -rf /home/rovane/floods/p05/backup/* /home/rovane/floods/p05
{ time timeout 60m jacamo ../workspace/floodsp05/floods.jcm ; } 2>&1 | cat > output/p05/p05temp.out
for f in output/p05/*.out; do ( cat "${f}"; echo) >> ../planners/results/r8/domap/p05.out; done
rm output/p05/*.out
/bin/cp -rf /home/rovane/floods/p05/backup/* /home/rovane/floods/p05
