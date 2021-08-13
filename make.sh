# !/bin/bash
# file based on answer:
# https://tex.stackexchange.com/questions/140845/how-can-i-ignore-latex-error-while-compiling

# options: [main, proposal, presentation]
filename=presentation #presentation #report # main # presentation

mv aux/${filename}.lo* aux/${filename}.aux aux/${filename}.ilg .
mv aux/${filename}.ind aux/${filename}.toc .
mv aux/${filename}.bbl aux/${filename}.blg .
mv aux/${filename}.out aux/${filename}.asc .
mv aux/${filename}.snm aux/${filename}.fls aux/${filename}.run.xml .
mv aux/${filename}.nav aux/${filename}.dvi aux/${filename}.fdb_latexmk .
mv aux/${filename}.vrb  aux/${filename}-blx.bib .
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

# git remote set-url origin https://github.com/sdat2/surge.git
# git remote set-url origin https://git.overleaf.com/5db73e7598296c0001d6ce28
python output/convert.py # output/presentation.pdf
