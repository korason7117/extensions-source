#!/bin/bash
set -e

git config --global user.email "korason7117@users.noreply.github.com"
git config --global user.name "korason7117"
git status
if [ -n "$(git status --porcelain)" ]; then
    git add .
    git commit -m "Update extensions repo"
    git push

    curl https://purge.jsdelivr.net/gh/korason7117/extensions@repo/index.min.json
else
    echo "No changes to commit"
fi
