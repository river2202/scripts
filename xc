#!/bin/bash

xcprojects=(".xcworkspace" ".xcodeproj")

set -f
for (( i=0; i<${#xcprojects[@]}; i++ ));
do
  var=`ls -1 | grep -e ${xcprojects[$i]}`
  array=(${var//\*/ })

  if [[ ${#array[@]} -gt 0 ]]; then
    index=0
    if [[ ${#array[@]} -gt 1 ]]; then
      for i in "${!array[@]}"
      do
          echo "$i. ${array[i]}"
      done
      echo ""
      echo -n "Select index:"
      read -n1 index
      echo ""
      if [ "$index" = "q" ]; then
        exit 0
      fi
    fi

    open ${array[$index]}
    exit
  fi
done


