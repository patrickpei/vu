#!/bin/bash

# Copy over notes
rm -rf ./hw
mkdir hw
cp ~/Documents/Github/Vanderbilt/2018-fall/MATH3670/hw/* ./hw

# README title
printf "## MATH3670: Mathematical Data Science - Doug Hardin\n\n" > index.md

# Reading assignments
cat ~/Documents/Github/Vanderbilt/2018-fall/MATH3670/reading.md >> index.md

# Homework
printf "\n\n### Homework\n" >> index.md

for homework in hw/*.pdf
do
    printf -- "- ["                                                  >> index.md
    printf $homework | cut -d'/' -f 2 | cut -d'.' -f 1 | tr -d '\n'   >> index.md
    printf "](./"                                                    >> index.md
    printf $homework | cut -d '.' -f 1 | tr -d '\n'                   >> index.md
    printf ".pdf)\n"                                                     >> index.md
done
printf "\n" >> index.md
