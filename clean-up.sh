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

#echo $filename
#echo $shortname
#echo $pathname
#echo $directory

rm -f "$directory"/"$shortname.ps" "$directory"/*.aux "$directory"/*.log "$directory"/*.toc "$directory"/*.bbl "$directory"/*.blg "$directory"/*.idx "$directory"/*.out "$directory"/*.ind "$directory"/*.ilg "$directory"/*.bak "$directory"/*.synctex "$directory"/*.nav "$directory"/*.snm "$directory"/*.lol "$directory"/*.lof "$directory"/*.spl "$directory"/*.lyx "$directory"/*.synctex "$directory"/*.lot "$directory"/*~ "$directory"/*.pdfsync "$directory"/*.synctex.gz "$directory"/"#"*"#" "$directory"/.??*xml "$directory"/*.tex.backup

rm -fR "$directory"/auto
