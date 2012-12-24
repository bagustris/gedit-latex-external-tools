#!/bin/sh
# [Gedit Tool]
# Name=PDF Font Embedding
# Shortcut=<Primary>2
# Languages=latex
# Applicability=titled
# Output=nothing
# Input=nothing
# Save-files=nothing


filename=$GEDIT_CURRENT_DOCUMENT_NAME
basename=${filename%.*}


ps2pdf -dPDFSETTINGS=/prepress "$basename.pdf" temp-embedding.pdf
rm -f "$basename.pdf"
mv -f temp-embedding.pdf "$basename.pdf"
mate-open "$basename.pdf"





