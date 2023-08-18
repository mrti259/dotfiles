#!/bin/sh

if [ ! $1 ]; then
  echo "Argument missing"
  exit 1
fi

FILE=$1.gitignore

wget https://raw.githubusercontent.com/github/gitignore/main/$FILE

echo "Renaming $FILE to .gitignore"
mv $FILE .gitignore

echo "Done"
