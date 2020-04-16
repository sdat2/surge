
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

Convert the pdf slides to powerpoint slides.

> python3 output/convert.py

*Requirements*

texcount, texlive, etc.

*Size of Repository*

Output of command:

> cloc $(git ls-files)

is:

-------------------------------------------------------------------------------
Language                     files          blank        comment           code
-------------------------------------------------------------------------------
TeX                             57            640            194           4426
Python                           1             10              7             34
Markdown                         1             18              0             29
Bourne Shell                     1              6              7             18
-------------------------------------------------------------------------------
SUM:                            60            674            208           4507
-------------------------------------------------------------------------------
