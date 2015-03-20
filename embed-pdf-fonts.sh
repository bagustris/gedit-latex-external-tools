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

if [ -f "$basename.ps" ];
then

  #Convert PDF to PS
  #pdftops -origpagesizes "$basename.pdf" "$basename.ps"

  # Remove Type 3 fonts
  pkfix "$basename.ps" "$basename-fix.ps"

  # Embedd fonts into a temp PDF file
  ps2pdf -dPDFSETTINGS=/prepress \
         -dCompatibility=1.2 \
         "$basename-fix.ps" \
         "$basename.pdf"

# Remove original and fixed PS files
rm -f "$basename.ps" "$basename-fix.ps"

fi

if [ ! -f "$basename.ps" ] && [ -f "$basename.pdf" ];
then

  ## Rename temp PDF
  #mv -f temp-embedding.pdf "$basename.pdf"

  # Embedd fonts into a temp PDF file
  ps2pdf -dPDFSETTINGS=/prepress \
         -dCompatibility=1.3 \
         "$basename.pdf" \
         "$basename-embed.pdf"

  # Remove original PDF
  rm -f "$basename.pdf"

  # Rename temp PDF
  mv -f "$basename-embed.pdf" "$basename.pdf"

fi

# Open PDF
xdg-open "$basename.pdf" &

