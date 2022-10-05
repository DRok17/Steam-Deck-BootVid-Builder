#!/bin/bash
#Set Paths/Files
css_path="/home/deck/.local/share/Steam/steamui/css/library.css"
css_backupfile="./1boot/css-js/library.css"
js_backupfile="./1boot/css-js/library.js"
ovr_path="/home/deck/.local/root/config/uioverrides/movies/deck_startup.webm"

#WEBM Check
if [ -e $ovr_path ] #Check for Preview/Beta WEBM file exists
then
    rm $ovr_path
    qdbus org.kde.Shutdown /Shutdown org.kde.Shutdown.logout
else
    echo "Modified" > 100.txt
    rm 100.txt
fi
