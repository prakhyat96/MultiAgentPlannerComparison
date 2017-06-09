export PATH=$JACAMO_HOME/scripts:$PATH
{ time timeout 60m jacamo ../workspace/floodsp08/floods.jcm ; } 2>&1 | cat > output/p08/p08temp.out
for f in output/p08/*.out; do ( cat "${f}"; echo) >> ../planners/results/r5/domap/p08.out; done
rm output/p08/*.out
/bin/cp -rf /home/rovane/floods/p08/backup/* /home/rovane/floods/p08
{ time timeout 60m jacamo ../workspace/floodsp08/floods.jcm ; } 2>&1 | cat > output/p08/p08temp.out
for f in output/p08/*.out; do ( cat "${f}"; echo) >> ../planners/results/r6/domap/p08.out; done
rm output/p08/*.out
/bin/cp -rf /home/rovane/floods/p08/backup/* /home/rovane/floods/p08
