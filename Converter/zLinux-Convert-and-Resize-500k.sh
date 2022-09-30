#!/bin/bash
conv="./"
inp="./Input/"
finsh="./Input/Done/"
out="./Out/"
for file in $inp*.mp4
do
# 500 K 64 Bit
ffmpeg -i $file -filter:v "scale='min(1280,iw)':min'(800,ih)':force_original_aspect_ratio=decrease,pad=1280:800:(ow-iw)/2:(oh-ih)/2" -b:v 500K -maxrate 500K -minrate 500K -b:a 64k "${file%%.mp4}".webm
# 1000 K 64 Bit
#ffmpeg -i $file -filter:v "scale='min(1280,iw)':min'(800,ih)':force_original_aspect_ratio=decrease,pad=1280:800:(ow-iw)/2:(oh-ih)/2" -b:v 1000K -maxrate 1000K -minrate 1000K -b:a 64k "${file%%.mp4}".webm
mv $file $finsh
done
for fileout in $inp*.webm
do
mv -- "$fileout" "$out"
done