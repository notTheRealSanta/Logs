#!/bin/sh

osascript -e 'quit app "Logseq"'

rm _build/static/css/custom.css
cp cp/custom.css _build/static/css/custom.css

cp cp/Flammarion.png _build/static/img/logo.png

git commit -am "`date`"
git subtree push --prefix _build origin gh-pages
