#!/bin/bash
#Rename WEBM to deck_startup
for f in *.webm
do
   mv -- "$f" "deck_startup.webm"
done
#Pathways to Video, CSS, and JSS files
vid_inp="./deck_startup.webm"
vid_path="/home/deck/.local/share/Steam/steamui/movies/deck_startup.webm"
ovr_path="/home/deck/.local/share/Steam/steamui/overrides/movies/deck_startup.webm"
css_path="/home/deck/.local/share/Steam/steamui/css/library.css"
js_path="/home/deck/.local/share/Steam/steamui/library.js"
backup="./css-js/"
css_backupfile="./css-js/library.css"
js_backupfile="./css-js/library.js"
edit="./"
css_file="./library.css"
js_file="./library.js"
override="./override.txt"

#Check if Override is enabled
if [ -e $override ]
then
    mkdir -p /home/deck/.local/root/config/uioverrides/movies
    vid_size=$(stat --printf="%s" $vid_path)
    cp $vid_inp $ovr_path
    echo "Modified" > 100.txt
    rm 100.txt
    exit
else
    #Continue with non-official
    echo "Override Off" > 100.txt
    rm 100.txt
fi
#Get Stats
vid_size=$(stat --printf="%s" $vid_path)
css_size=$(stat --printf="%s" $css_path)
js_size=$(stat --printf="%s" $js_path)

#Check CSS File has been modified
if [ -e $css_backupfile ]
then
    echo "Modified" > 100.txt
    rm 100.txt
else
    #Fix Video Size
    cp $css_path $backup
    cp $css_backupfile $edit
    old_video_setting="{flex-grow:0;width:300px;height:300px;z-index:10}"
    new_video_setting1="{flex-grow:0;width:0100%;height:0100%;z-index:10}"
    new_video_setting2="{flex-grow:1;width:0100%; height:0100%; z-index:10}"
    #Videos with transparent backgrounds
    old_bg_setting="0e141b;z-index:10}"
    new_bg_setting="000000;z-index:10}"
    sed -i -e"s/$old_video_setting/$new_video_setting1/" $css_file
    sed -i -e"s/$old_video_setting/$new_video_setting2/" $css_file
    sed -i -e"s/$old_bg_setting/$new_bg_setting/" $css_file
    echo "Modified" > 100.txt
    rm 100.txt
fi

#Check JS File has been modified
if [ -e $js_backupfile ]
then
    echo "Modified" > 100.txt
    rm 100.txt
else
    #Fix Video Duration
    cp $js_path $backup
    cp $js_backupfile $edit
    old_duration_setting="i,1e4"
    new_duration_setting="i,2e4"
    sed -i -e"s/$old_duration_setting/$new_duration_setting/" $js_file
fi
#Move Video, CSS, and JSS files
cp $vid_inp $vid_path
cp $css_file $css_path
cp $js_file $js_path

#Truncate/Resize files
truncate -s $(($vid_size)) $vid_path
truncate -s $(($css_size)) $css_path
truncate -s $(($js_size)) $js_path
