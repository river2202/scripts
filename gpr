#!/bin/bash

remoteUrl=$(git remote -v | awk '/fetch/{print $2}' | sed -Ee 's#(git@|git://)#https://#' -e 's@com:@com/@' -e 's@\.git@/@' | head -n1)
branch=$(git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/\1/")
open "${remoteUrl}compare/${branch}"
