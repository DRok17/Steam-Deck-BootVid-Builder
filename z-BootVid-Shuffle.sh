#!/bin/sh
#Pathways
shuf_path="/home/deck/homebrew/.shuffle/"
shuf_sh="./1boot/shuffle.sh"
shuf_ser="./1boot/shuffle.service"
#Check if Shuffle exists
if [ -e $shuf_path ]
then
    rm -rf /home/deck/homebrew/.shuffle
    rm z-Shuffle-Enabled.txt
    cd ./1boot
    sh shuffle-uninstall.sh
    exit
else
    mkdir -p /home/deck/homebrew/.shuffle
    find Vids '*.webm' -exec cp -vuni '{}' "/home/deck/homebrew/.shuffle" ";"
    rm ./All/z-prep-apply-boot.sh
    cp $shuf_sh $shuf_path
    cp $shuf_ser $shuf_path
    echo "Shuffle Enabled" > z-Shuffle-Enabled.txt
    cd ./1boot
    sh shuffle-install.sh
    exit
fi
exit
