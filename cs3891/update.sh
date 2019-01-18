#!/bin/bash

# Copy over notes
mkdir -p lectures
rm -f lectures/*.md
cp ~/Documents/Github/Vanderbilt/2019-spring/CS3891/lectures/* ./lectures
rm ./lectures/*.pdf

# # Copy homework pdfs
# cd homework
# rm *.pdf
# find ~/Documents/Github/Vanderbilt/2017-spring/CS3250/homework -name \*-blank.pdf -exec cp {} . \;
# cd ..

# README title
printf "## CS3891: Deep Learning - Dr. Xenofon Koutsoukos\n\n" > index.md

# Lectures
printf "## Lectures\n" >> index.md

for lecture in lectures/*.md
do
    printf -- "- ["                                                  >> index.md
    printf $lecture | cut -d'/' -f 2 | cut -d'.' -f 1 | tr -d '\n'   >> index.md
    printf "](./"                                                    >> index.md
    printf $lecture | cut -d '.' -f 1 | tr -d '\n'                   >> index.md
    printf ")\n"                                                     >> index.md
done
printf "\n" >> index.md

# # Take Home Exams / Homework
# printf "## Take Home Exams / Homework\n" >> index.md

# for pdf in homework/*-blank.pdf
# do
#     printf -- "- ["                                             >> index.md
#     printf $pdf | cut -d'/' -f 2 | cut -d '.' -f 1 | tr -d '\n' >> index.md
#     printf "](./"                                               >> index.md
#     printf $pdf                                                 >> index.md
#     printf ")\n"                                                >> index.md
# done
