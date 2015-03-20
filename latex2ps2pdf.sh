#!/bin/sh
# [Gedit Tool]
# Name=LaTeX -> PS -> PDF
# Shortcut=<Primary>3
# Languages=latex
# Applicability=titled
# Output=output-panel
# Input=document
# Save-files=document

filename=$GEDIT_CURRENT_DOCUMENT_NAME
basename=${filename%.*}

# Invoke rubber to parse TeX/LaTeX files as 
# many times as required to solve all references
rubber --inplace --maxerr -1 --short --force --warn all --ps --pdf  "$filename"

# Remove intermediate PS output
#rm -f "$basename.ps"

# Open PDF output
xdg-open "$basename.pdf" &

