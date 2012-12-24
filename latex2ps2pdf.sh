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


rubber --inplace --maxerr -1 --short --force --warn all --ps --pdf  "$filename"
rm -f "$basename.ps"
mate-open "$basename.pdf"




