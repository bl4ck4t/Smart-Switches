#!/bin/bash
FILE="$1"
CMD="$2"
LAST=`ls -l "$FILE"`
while true; do
  sleep 1
  NEW=`ls -l "$FILE"`
  if [ "$NEW" != "$LAST" ]; then
    "$CMD" "$FILE"
    LAST="$NEW"
  fi
done
