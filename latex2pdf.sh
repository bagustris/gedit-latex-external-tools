#!/bin/sh
# [Gedit Tool]
# Name=LaTeX -> PDF
# Shortcut=<Primary>1
# Languages=latex
# Applicability=titled
# Output=output-panel
# Input=document
# Save-files=document

filename=$GEDIT_CURRENT_DOCUMENT_NAME
basename=${filename%.*}

# Invoke rubber to parse TeX/LaTeX files as 
# many times as required to solve all references
rubber --inplace --maxerr -1 --short --force --warn all --pdf "$filename"

# Open output
xdg-open "$basename.pdf"

