#!/bin/bash

printf "\033[0;32mDeploying updates to GitHub...\033[0m\n"

msg="Rebuilding site $(date)"
if [ -n "$*" ]
then
  msg="$*"
fi

echo ""
echo "$"
hugo -D

cd public
echo ""
echo ""
echo "Committing changes to $(pwd)"
git add .
git commit -m "${msg}"
git push

cd ..
echo ""
echo ""
echo "Committing changes to $(pwd)"
git add .
git commit -m "${msg}"
git push
