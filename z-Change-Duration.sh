#!/bin/sh
js_path="/home/deck/.local/share/Steam/steamui/library.js"
ten="./1boot/10.txt"
twenty="./1boot/20.txt"
thirty="./1boot/30.txt"

if [ -e $ten ]
then
    #Get Stats
    js_size=$(stat --printf="%s" $js_path)
    old_duration_setting="s,1e4"
    new_duration_setting="s,2e4"
    sed -i -e"s/$old_duration_setting/$new_duration_setting/" $js_path
    truncate -s $(($js_size)) $js_path
    cd ./1boot
    rm 10.txt
    echo "twenty" > 20.txt
    cd ..
    echo "Scripts" > Duration-20s.txt
    sleep 3
    rm Duration-20s.txt
    exit
else
    if [ -e $twenty ]
    then
        #Get Stats
        js_size=$(stat --printf="%s" $js_path)
        old_duration_setting="s,2e4"
        new_duration_setting="s,3e4"
        sed -i -e"s/$old_duration_setting/$new_duration_setting/" $js_path
        truncate -s $(($js_size)) $js_path
        cd ./1boot
        rm 20.txt
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
            new_duration_setting="s,1e4"
            sed -i -e"s/$old_duration_setting/$new_duration_setting/" $js_path
            truncate -s $(($js_size)) $js_path
            cd ./1boot
            rm 30.txt
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