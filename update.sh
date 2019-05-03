#!/bin/sh

git fetch origin master

UPSTREAM=${1:-'@{u}'}
LOCAL=$(git rev-parse @)
REMOTE=$(git rev-parse "$UPSTREAM")

if [ $LOCAL = $REMOTE ]; then
  echo "Already up to date."
  exit
fi

git reset --hard origin/master
git gc
