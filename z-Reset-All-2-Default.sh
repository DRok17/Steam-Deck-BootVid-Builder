#!/bin/bash
#Set Paths/Files
ovr_path="/home/deck/.steam/root/config/uioverrides/movies/deck_startup.webm"
sus_path="/home/deck/.steam/root/config/uioverrides/movies/deck-suspend-animation.webm"
thr_path="/home/deck/.steam/root/config/uioverrides/movies/deck-suspend-animation-from-throbber.webm"
#WEBM Check
if [ -e $ovr_path ] #Check for Preview/Beta WEBM file exists
then
    rm $ovr_path
    rm $sus_path
    rm $thr_path
    qdbus org.kde.Shutdown /Shutdown org.kde.Shutdown.logout
else
    echo "Modified" > 100.txt
    rm 100.txt
fi
