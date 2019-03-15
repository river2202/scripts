#!/bin/bash

var=`git branch --sort -committerdate | head -n10`

echo "tip: git branch --sort -committerdate | head -n10"
echo ""

if [[ $# -gt 0 ]]; then
    var=`git branch --sort -committerdate | head -n$1`
fi

set -f
array=(${var//\*/ })

for i in "${!array[@]}"
do
    echo "$i. ${array[i]}"
done

echo ""
echo -n "Select branch index (enter for 0, q to quit):"
read  -n1 index

echo ""

if [ "$index" = "q" ]; then
  exit 0
fi

git checkout ${array[$index]}