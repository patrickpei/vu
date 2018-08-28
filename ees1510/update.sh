#!/bin/bash

# Copy over notes
mkdir -p lectures
rm -f lectures/*.md
cp ~/Documents/Github/Vanderbilt/2018-fall/EES1510/lectures/* ./lectures

# README title
printf "## EES1510: The Dynamic Earth: Introduction to Geological Sciences - Dr. Lily Claiborne\n\n" > index.md

# Lectures
printf "### Lectures\n" >> index.md

for lecture in lectures/*.md
do
    printf -- "- ["                                                  >> index.md
    printf $lecture | cut -d'/' -f 2 | cut -d'.' -f 1 | tr -d '\n'   >> index.md
    printf "](./"                                                    >> index.md
    printf $lecture | cut -d '.' -f 1 | tr -d '\n'                   >> index.md
    printf ")\n"                                                     >> index.md
done
printf "\n" >> index.md
