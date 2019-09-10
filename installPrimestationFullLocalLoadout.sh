#!/bin/bash
pushd /Volumes/PRIMEGAMES/retropie-mount

for file in /Volumes/MacBak001/primestationoneMegaFiles/*.bz2
do
  unmegalocal.sh "$file" >> results.out
done

popd
