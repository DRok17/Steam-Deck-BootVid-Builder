#!/bin/bash
vids="./vids.txt"
sus="./sus.txt"

#Check if Vids
if [ -e $vids ]
then
    #Rename WEBM to deck_startup
    for f in *.webm
    do
        mv -- "$f" "deck_startup.webm"
    done
    #Pathways to Video
    vid_inp="./deck_startup.webm"
    ovr_path="/home/deck/.steam/root/config/uioverrides/movies/deck_startup.webm"
    #Check Overrides
    if [ -e $ovr_path ]
    then
        rm vids.txt
        mkdir -p /home/deck/.steam/root/config/uioverrides/movies
        cp $vid_inp $ovr_path
        qdbus org.kde.Shutdown /Shutdown org.kde.Shutdown.logout
    else
        rm vids.txt
        mkdir -p /home/deck/.steam/root/config/uioverrides/movies
        cp $vid_inp $ovr_path
        qdbus org.kde.Shutdown /Shutdown org.kde.Shutdown.logout
    fi
fi


#Check if Suspends/Throbber
if [ -e $sus ]
then
    #Rename WEBM to deck-suspend-animation
    for f in *.webm
    do
        mv -- "$f" "deck-suspend-animation.webm"
    done
    #Pathways to Video
    vid_inp="./deck-suspend-animation.webm"
    sus_path="/home/deck/.steam/root/config/uioverrides/movies/deck-suspend-animation.webm"
    thr_path="/home/deck/.steam/root/config/uioverrides/movies/deck-suspend-animation-from-throbber.webm"
    #Check Overrides
    if [ -e $sus_path ]
    then
        rm sus.txt
        mkdir -p /home/deck/.steam/root/config/uioverrides/movies
        cp $vid_inp $sus_path
        cp $vid_inp $thr_path
        qdbus org.kde.Shutdown /Shutdown org.kde.Shutdown.logout
    else
        rm sus.txt
        mkdir -p /home/deck/.steam/root/config/uioverrides/movies
        cp $vid_inp $sus_path
        cp $vid_inp $thr_path
        qdbus org.kde.Shutdown /Shutdown org.kde.Shutdown.logout
    fi
fi