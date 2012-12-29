#!/bin/sh
# [Gedit Tool]
# Name=LaTeX -> DVI (Source Specials, Quiet)
# Shortcut=<Primary>4
# Languages=latex
# Applicability=titled
# Output=output-panel
# Input=document
# Save-files=document

filename=$GEDIT_CURRENT_DOCUMENT_NAME

# Invoke rubber to parse TeX/LaTeX files as 
# many times as required to solve all references
rubber --inplace --maxerr -1 --short --force --warn all "$filename"

# Make sure that source is embedded into DVI file
# to allow inverse search
latex -interaction batchmode --src-specials "$filename"

