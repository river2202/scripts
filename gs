#!/bin/bash

var=`git branch --sort -committerdate | head -n10`

echo "tip: git branch --sort -committerdate | head -n10"
echo ""

if [[ $# -gt 0 ]]; then
    var=`git branch --sort -committerdate | head -n$1`
fi

set -f                      # avoid globbing (expansion of *).
array=(${var//\*/ })

for i in "${!array[@]}"
do
    echo "$i. ${array[i]}"
done

echo "Select branch index: press enter for 0"
read index
git checkout ${array[$index]}