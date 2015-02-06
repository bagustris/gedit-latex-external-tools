#!/bin/sh
# [Gedit Tool]
# Name=Bundledoc
# Shortcut=<Primary>8
# Languages=latex
# Applicability=titled
# Output=nothing
# Input=nothing
# Save-files=nothing

filename=$GEDIT_CURRENT_DOCUMENT_NAME
basename=${filename%.*}

CONFIG_FILE=`eval echo  "~/.config/gedit/tools/bd-zip.cfg"`

bundledoc --verbose \
          --localonly \
          --config=$CONFIG_FILE \
          --listdeps=yes \
          --nokeepdirs \
          --exclude=.out \
          --include="*.bib" \
          --manifest="" \
          "$basename".dep

