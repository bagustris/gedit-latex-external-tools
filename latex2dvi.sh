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

rubber --inplace --maxerr -1 --short --force --warn all "$filename"
latex -interaction batchmode --src-specials "$filename"
