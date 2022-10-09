#!/bin/sh
cd .
Vids="../Vids/"
Script="./.batch/z-prep-apply-boot.sh"
shuf_path="/home/deck/homebrew/.shuffle/"
cd ./.batch/
chmod +x z-prep-apply-boot.sh
cd ..
for f in *.webm
do
  subdir=${f%%.*}
  [ ! -d "$subdir" ] && mkdir -- "$subdir"
  mv -- "$f" "$subdir"
  cp -- "$Script" "$subdir"
  mv -- "$subdir" "$Vids"
done
if [ -e $shuf_path ]
then
    rm -rf /home/deck/homebrew/.shuffle
    cd ../
    sh z-BootVid-Shuffler.sh
    exit
else
    exit
fi
