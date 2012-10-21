#!/bin/bash
# Convert all HTML files in the current directory into Markdown.


##### GLOBALS
PANDOC=`which pandoc`
SED=`which sed`
OUTDIR='markdown'


if [ -z "$PANDOC" ]; then
    echo "Pandoc not found! Please install Pandoc and try again."
    exit
fi

if [ -z "$SED" ]; then
    echo "sed not found! Please install sed and try again."
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
    pandoc -s --columns=80 -r html ${base}.html -o ${OUTDIR}/${base}.md
    sed -i "s/[ \t]*$//" ${OUTDIR}/${base}.md
    echo "Converting file $file to Markdown... done"
done


echo "All HTML posts have been converted to Markdown and stored in the 'markdown' folder!"
