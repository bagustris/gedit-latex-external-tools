#!/bin/sh
# [Gedit Tool]
# Name=Open Terminator
# Shortcut=<Primary>6
# Languages=
# Applicability=titled
# Output=nothing
# Input=nothing
# Save-files=nothing


terminator --working-directory="$GEDIT_CURRENT_DOCUMENT_DIR"
