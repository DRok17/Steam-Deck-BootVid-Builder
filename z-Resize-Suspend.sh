#!/bin/sh
css_path="/home/deck/.local/share/Steam/steamui/css/3991.css"
sus_min="./1boot/sus-min.txt"
sus_max="./1boot/sus-max.txt"

if [ -e $sus_min ]
then
    #Get Stats
    css_size=$(stat --printf="%s" $css_path)
    old_duration_setting="{flex-grow:0;width:300px;height:300px}"
    new_duration_setting="{flex-grow:1;width:0100%;height:0100%}"
    sed -i -e"s/$old_duration_setting/$new_duration_setting/" $css_path
    truncate -s $(($css_size)) $css_path
    cd ./1boot
    rm sus-min.txt
    echo "sus_max" > sus-max.txt
    cd ..
    echo "Scripts" > Suspend-Size-Max.txt
    sleep 3
    rm Suspend-Size-Max.txt
    exit
else
    if [ -e $sus_max ]
    then
        #Get Stats
        css_size=$(stat --printf="%s" $css_path)
        old_duration_setting="{flex-grow:1;width:0100%;height:0100%}"
        new_duration_setting="{flex-grow:0;width:300px;height:300px}"
        sed -i -e"s/$old_duration_setting/$new_duration_setting/" $css_path
        truncate -s $(($css_size)) $css_path
        cd ./1boot
        rm sus-max.txt
        echo "sus_min" > sus-min.txt
        cd ..
        echo "Scripts" > Suspend-Size-Min.txt
        sleep 3
        rm Suspend-Size-Min.txt
        exit
    else
        cd ./1boot
        echo "sus_min" > sus-min.txt
        cd ..
        echo "Scripts" > Suspend-Size-Min.txt
        sleep 3
        rm Suspend-Size-Min.txt
        exit
    
    fi

fi
exit