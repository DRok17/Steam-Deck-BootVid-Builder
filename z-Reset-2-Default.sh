#!/bin/bash
css_path="/home/deck/.local/share/Steam/steamui/css/library.css"
css_backupfile="./1boot/css-js/library.css"
js_backupfile="./1boot/css-js/library.js"
rm $css_path
rm $css_backupfile
rm $js_backupfile
qdbus org.kde.Shutdown /Shutdown org.kde.Shutdown.logout