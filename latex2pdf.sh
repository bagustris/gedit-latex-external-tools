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

rubber --inplace --maxerr -1 --short --force --warn all --pdf "$filename"
mate-open "$basename.pdf"



