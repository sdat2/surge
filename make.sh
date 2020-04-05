# !/bin/bash
# file based on answer:
# https://tex.stackexchange.com/questions/140845/how-can-i-ignore-latex-error-while-compiling
filename=proposal
mv aux/${filename}.lo* aux/*.aux aux/${filename}.ilg aux/${filename}.ind aux/${filename}.toc .
mv aux/${filename}.bbl aux/${filename}.blg aux/${filename}.out aux/${filename}.asc .
mv aux/${filename}.snm aux/${filename}.fls aux/${filename}.run.xml .
mv aux/${filename}.nav aux/${filename}.dvi aux/${filename}.fdb_latexmk .
mv aux/${filename}.vrb  .
mv aux/${filename}*-blx.bib .
# python tools/mkhistory.py hist.tex # I don't know what this originally did.
pdflatex --interaction nonstopmode --shell-escape ${filename}.tex # >/dev/null
makeindex -c -s myindex.ist ${filename}.idx #2>/dev/null
bibtex ${filename} #>/dev/null
makeindex -c -s myindex.ist ${filename}.idx #2>/dev/null
pdflatex  --interaction nonstopmode  --shell-escape ${filename}.tex #>/dev/null
mv ${filename}.lo* *.aux ${filename}.ilg ${filename}.ind ${filename}.toc aux/
mv ${filename}.bbl ${filename}.blg ${filename}.out *.asc aux/
mv *.snm *.fls *.run.xml *.nav *.dvi *.fdb_latexmk *.vrb aux/
mv *-blx.bib aux/
mv *.pdf output/
