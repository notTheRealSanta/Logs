#!/bin/sh

git commit -am "Save uncommited changes (WIP)"
git branch --delete --force gh-pages
git checkout --orphan gh-pages
git add -f _build
git commit -m "Rebuild GitHub pages"
git filter-branch -f --prune-empty --subdirectory-filter _build && git push -f origin gh-pages && git checkout -