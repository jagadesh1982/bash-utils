#!/bin/bash

CURL="/usr/bin/curl"

if [ -n "$1" ]; then
  URL="$1"
else
  echo -n "Please pass the url you want to measure: "
  read URL
fi

RESULT=`$CURL -o /dev/null -s -w "%{time_connect}:%{time_starttransfer}:%{time_total}" $URL`

echo -e "To_Connect\tStart_Transfer\tTotal_Time"
sed s/\:/\\t\\t/g <<< $RESULT
