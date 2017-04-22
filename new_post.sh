#!/bin/bash

read -p "Post title: " -e TITLE

DTITLE=`echo -n $TITLE | sed 's/ /-/g' | tr "[:upper:]" "[:lower:]"`

DATE=`date +%Y-%m-%d`
YEAR=`date +%Y`
TIME=`date +%H:%M:%S`

FILENAME=_posts/$YEAR/$DATE-$DTITLE.md

# Make sure the directory for the year exists
mkdir -p "$(dirname "$FILENAME")" || exit

# Now make the file
if [ -f $FILENAME ]; then
  echo "Editing \"" $TITLE "\""
else
  echo -n "Location: "
  read -e LOC

  cat > $FILENAME <<EOF
---
title: $TITLE
location: $LOC
time: $TIME
---

EOF

fi

vi $FILENAME

