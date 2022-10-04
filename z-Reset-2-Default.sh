#!/bin/bash
css_path="/home/deck/.local/share/Steam/steamui/css/library.css"
css_backupfile="./1boot/css-js/library.css"
js_backupfile="./1boot/css-js/library.js"
ovr_path="/home/deck/.local/share/Steam/steamui/overrides/movies/deck_startup.webm"
rm $css_path
rm $css_backupfile
rm $js_backupfile
rm $ovr_path
qdbus org.kde.Shutdown /Shutdown org.kde.Shutdown.logout