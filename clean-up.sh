#!/bin/sh
# [Gedit Tool]
# Name=Clean Up Files
# Shortcut=<Primary>5
# Languages=latex
# Applicability=titled
# Output=nothing
# Input=nothing
# Save-files=nothing


filename=$GEDIT_CURRENT_DOCUMENT_NAME
shortname=${filename%.*}
pathname=$GEDIT_CURRENT_DOCUMENT_PATH
directory=`dirname "$pathname"`

# Standard garbage
extensions="acn acr alg aux bbl blg dvi \
            fdb_latexmk glg glo gls idx \
            ilg ind ist lof lol log lot \
            lyx maf mp mtc mtc1 nav nlo \
            out pdfsync snm spl synctex \
            synctex.gz tmp toc top tui vrb \
            bak tex.backup \
            swp"

for databaseName in $extensions; do
  rm -f "$directory"/*.$databaseName
done 

# Remove PS output? All we want is the final output, right?
rm -f "$directory"/"$shortname.ps"

# More garbage
rm -f "$directory"/*~ \
      "$directory"/"#"*"#" \
      "$directory"/.??*xml

# Some LaTeX editors create gargae directories
rm -fR "$directory"/auto

