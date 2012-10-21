#!/bin/bash
# Convert all HTML files in the current directory into Markdown.


##### GLOBALS
PANDOC=`which pandoc`
OUTDIR='markdown'


if [ -z "$PANDOC" ]; then
    echo "Pandoc not found! Please install Pandoc and try again."
    exit
fi


if [ ! -d ./markdown ]; then
    mkdir ./markdown
fi


for file in *.html; do
    if [ $file = "*.html" ]; then
        continue
    fi

    base=${file%.*}
    pandoc -s -r html ${base}.html -o ${OUTDIR}/${base}.md
    echo "Converting file $file to Markdown... done"
done


echo "All HTML posts have been converted to Markdown and stored in the 'markdown' folder!"
