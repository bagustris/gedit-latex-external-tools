#!/bin/sh
# [Gedit Tool]
# Name=Remove LaTeX comments
# Shortcut=<Primary>7
# Languages=latex
# Applicability=titled
# Output=nothing
# Input=nothing
# Save-files=nothing

filename=$GEDIT_CURRENT_DOCUMENT_NAME
basename=${filename%.*}


#perl -pe 's/(^|[^\\])%.*/\1%/' < "$basename.tex" > "$basename-cleaned.tex"
perl -pe 's/(^|[^\\])%.*/\1%/'< "$basename.tex" | \
      sed 's/[[:space:]]*$//' > "$basename-cleaned.tex"



