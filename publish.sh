#!/bin/sh

osascript -e 'quit app "Logseq"'

rm _build/static/css/custom.css
cp cp/custom.css _build/static/css/custom.css

cp cp/Flammarion.png _build/static/img/logo.png

git commit -m "`date`"
git subtree add --prefix=_build origin gh-pages
git subtree push --prefix=_build origin gh-pages
