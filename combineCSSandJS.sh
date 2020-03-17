#!/bin/bash

# puts all css and js into one file

jsSource=""
cssSource=""

jsDest=""
cssDest=""

if [ "$1" == "django" ]; then
    jsSource="./static/js"
    cssSource="./static/css"
    jsDest="./static/js/app.js"
    cssDest="./static/css/app.css"
fi

echo "Don't forget to run from project root"

echo "Erasing app.js"

echo "" > $jsDest

echo "Erasing app.css"

echo "" > $cssDest

for file in $cssSource/*
do
    cat $file >> $cssDest
done

for file in $jsSource/*
do
    cat $file >> $jsDest
done

