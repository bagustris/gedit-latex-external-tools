#!/bin/sh
# [Gedit Tool]
# Name=Open Terminal
# Shortcut=<Primary>6
# Languages=
# Applicability=titled
# Output=nothing
# Input=nothing
# Save-files=nothing


x-terminal-emulator --working-directory="$GEDIT_CURRENT_DOCUMENT_DIR"
