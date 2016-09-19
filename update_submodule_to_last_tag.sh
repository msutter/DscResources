#!/bin/bash
for sub in `git submodule | cut -d ' ' -f3`
do
  pushd $sub
  latesttag=$(git describe --tags)
  echo checking out ${latesttag}
  git checkout ${latesttag}
  popd
done