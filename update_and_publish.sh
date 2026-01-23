#!/usr/bin/env bash
set -e #stop if any command fails

git add .
git commit -m "Update website"
git push origin main    

cd my-site
quarto publish gh-pages --no-prompt
cd ..