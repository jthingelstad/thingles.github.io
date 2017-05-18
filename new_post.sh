#!/bin/bash

read -p "Post title: " -e TITLE

DTITLE=`echo -n $TITLE | sed 's/ /-/g' | tr "[:upper:]" "[:lower:]"`

DATE=`date +%Y-%m-%d`
YEAR=`date +%Y`
TIMESTAMP=`date '+%Y-%m-%d %H:%M:%S %z'`

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
title: "$TITLE"
location: "$LOC"
date: $TIMESTAMP
description: 
image: 
tags: 
---

EOF

fi

vi $FILENAME

