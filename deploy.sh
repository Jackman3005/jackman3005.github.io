#!/usr/bin/env bash


printf "\n\nBuilding public folder and creating commit out of changes (for public folder only)...\n"
printf "Commit message: "
read COMMIT_MSG

./build-prod.sh

git reset .
git add public/
git commit -m"$COMMIT_MSG"

git subtree push --prefix public origin master