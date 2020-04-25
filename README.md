
This repository contains the LaTeX files for my Part III Project 2020.

Change the main.sh file to choose which document to compile.
The file will be produced in the output directory.
The presentation can then be converted to powerpoint using the output/convert.py script.

@author Candidate 8205R.

*Useage*

> chmod 755 make.sh

Look in make.sh, change $filename to desired compilation name.

> ./make.sh

look in output/ for the pdf output.

Ignore all non-fatal warnings.

Look in wordcount folder for wordcounts.

Convert the pdf slides to powerpoint slides.

> python3 output/convert.py

To change the style of algorithms, change the algorithms/algorithm.tex file.

To change the .bib files included change the references/references.tex file.

*Requirements*

texcount, texlive, etc.

*Size of Repository*

Output of command:

> cloc $(git ls-files) > appendices/cloc.txt
