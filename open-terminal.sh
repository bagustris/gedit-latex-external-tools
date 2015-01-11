#!/bin/sh
# [Gedit Tool]
# Name=Open Terminal
# Shortcut=<Primary>6
# Languages=
# Applicability=titled
# Output=nothing
# Input=nothing
# Save-files=nothing

# Although Gedit has a terminal plugin, I find it too limited.

# Call default terminal
x-terminal-emulator --working-directory="$GEDIT_CURRENT_DOCUMENT_DIR" &
