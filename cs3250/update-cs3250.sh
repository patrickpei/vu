#!/bin/bash

# Copy over notes
mkdir -p lectures
rm -f lectures/*.md
cp ~/Documents/Github/Vanderbilt/spring-2017/CS3250/lecture-notes/* ./lectures

# Copy homework pdfs
cd homework
rm homework-*
find ~/Documents/Github/Vanderbilt/spring-2017/CS3250/homework -name \*.pdf -exec cp {} . \;
cd ..

# README title
printf "## CS3250: Algorithms - Professor Jeremy Spinrad" > index.md
printf "\n\n" >> index.md

# Lectures
printf "## Lectures\n" >> index.md

for lecture in lectures/*.md
do
    printf -- "- ["                                 >> index.md
    printf $lecture | cut -d'.' -f 1 | tr -d '\n'   >> index.md
    printf "](./"                                   >> index.md
    printf $lecture                                 >> index.md
    printf ")\n"                                    >> index.md
done
printf "\n" >> index.md

# Take Home Exams / Homework
printf "## Take Home Exams / Homework" >> index.md
printf "\n" >> index.md

# cd homework
for pdf in homework/*blank.pdf
do
    printf -- "- ["                                 >> index.md
    printf $pdf | cut -d'.' -f 1 | tr -d '\n'       >> index.md
    printf "](./"                                   >> index.md
    printf $pdf                                     >> index.md
    printf ")\n"                                    >> index.md
done