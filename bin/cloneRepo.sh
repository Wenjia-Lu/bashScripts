#! /bin/bash
cloneurl=`git remote -v | cut -d ' ' -f 1 | cut -d $'\t' -f 2 | head -n 1`
cd ..
git clone $cloneurl newClone 2>/dev/null
cd newClone
make compile
make run
cd ..
rm -rf newClone
