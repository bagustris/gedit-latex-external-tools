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

# Embedd fonts into a temp PDF file
ps2pdf -dPDFSETTINGS=/prepress "$basename.pdf" temp-embedding.pdf

# Remove original PDF
rm -f "$basename.pdf"

# Rename temp PDF
mv -f temp-embedding.pdf "$basename.pdf"

# Open PDF
xdg-open "$basename.pdf" &

