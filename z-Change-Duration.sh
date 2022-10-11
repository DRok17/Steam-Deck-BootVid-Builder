#!/bin/sh
js_path="/home/deck/.local/share/Steam/steamui/library.js"
ten="./1boot/10.txt"
thirty="./1boot/30.txt"
sixty="./1boot/60.txt"

if [ -e $ten ]
then
    #Get Stats
    js_size=$(stat --printf="%s" $js_path)
    old_duration_setting="s,1e4"
    new_duration_setting="s,3e4"
    sed -i -e"s/$old_duration_setting/$new_duration_setting/" $js_path
    truncate -s $(($js_size)) $js_path
    cd ./1boot
    rm 10.txt
    echo "thirty" > 30.txt
    cd ..
    echo "Scripts" > Duration-30s.txt
    sleep 3
    rm Duration-30s.txt
    exit
else
    if [ -e $thirty ]
    then
        #Get Stats
        js_size=$(stat --printf="%s" $js_path)
        old_duration_setting="s,3e4"
        new_duration_setting="s,6e4"
        sed -i -e"s/$old_duration_setting/$new_duration_setting/" $js_path
        truncate -s $(($js_size)) $js_path
        cd ./1boot
        rm 30.txt
        echo "sixty" > 60.txt
        cd ..
        echo "Scripts" > Duration-60s.txt
        sleep 3
        rm Duration-60s.txt
        exit
    else
       if [ -e $sixty ]
       then
            #Get Stats
            js_size=$(stat --printf="%s" $js_path)
            old_duration_setting="s,6e4"
            new_duration_setting="s,1e4"
            sed -i -e"s/$old_duration_setting/$new_duration_setting/" $js_path
            truncate -s $(($js_size)) $js_path
            cd ./1boot
            rm 60.txt
            echo "ten" > 10.txt
            cd ..
            echo "Scripts" > Duration-10s.txt
            sleep 3
            rm Duration-10s.txt
            exit
        else
            cd ./1boot
            echo "ten" > 10.txt
            cd ..
            echo "Scripts" > Duration-10s.txt
            sleep 3
            rm Duration-10s.txt
            exit
        fi
    fi

fi
exit