#!/bin/sh
# [Gedit Tool]
# Name=Forward Search
# Shortcut=<Primary>0
# Languages=latex
# Applicability=titled
# Output=nothing
# Input=nothing
# Save-files=nothing

line=$GEDIT_CURRENT_LINE_NUMBER
column=1
tex_filename=$GEDIT_CURRENT_DOCUMENT_PATH
basename=${tex_filename%.*}
dvi_filename=$basename.dvi

# Invoke xdvi
xdvi -expertmode 31 \
     -wheelunit 640 \
     -sourceposition $line:"$tex_filename" \
     -s 6 \
     -bg white \
     -editor gedit "$dvi_filename"

