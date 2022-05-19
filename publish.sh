#!/bin/sh

osascript -e 'quit app "Logseq"'

rm _build/static/css/custom.css
cp cp/custom.css _build/static/css/custom.css

cp cp/Flammarion.png _build/static/img/logo.png

git commit -am "Save uncommited changes (WIP)"
git branch --delete --force gh-pages
git checkout --orphan gh-pages
git add -f _build
git commit -m "Rebuild GitHub pages"
git push -f origin gh-pages
git checkout main
