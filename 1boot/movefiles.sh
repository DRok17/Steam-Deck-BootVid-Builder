#!/bin/bash
#Rename WEBM to deck_startup
for f in *.webm
do
   mv -- "$f" "deck_startup.webm"
done
#Pathways to Video, CSS, and JSS files
vid_inp="./deck_startup.webm"
vid_path="/home/deck/.local/share/Steam/steamui/movies/deck_startup.webm"
ovr_path="/home/deck/.steam/root/config/uioverrides/movies/deck_startup.webm"
js_path="/home/deck/.local/share/Steam/steamui/library.js"
backup="./css-js/"
js_backupfile="./css-js/library.js"
edit="./"
js_file="./library.js"

#Check Overrides
if [ -e $ovr_path ]
then
    mkdir -p /home/deck/.steam/root/config/uioverrides/movies
    cp $vid_inp $ovr_path
    qdbus org.kde.Shutdown /Shutdown org.kde.Shutdown.logout
else
    mkdir -p /home/deck/.steam/root/config/uioverrides/movies
    cp $vid_inp $ovr_path
    qdbus org.kde.Shutdown /Shutdown org.kde.Shutdown.logout
fi

