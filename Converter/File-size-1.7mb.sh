#!/bin/bash
conv="./"
inp="./Input/"
finsh="./Input/Done/"
out="./Out/"
for webm in $inp*.webm 
do 
    mv -- "$webm" "${webm%.webm}.mp4"
done
for file in $inp*.mp4
do
target_size_mb=1700000 # 1.7MB target size
target_size=$(( $target_size_mb * 8 )) # target size in bits
length=`ffprobe -v error -show_entries format=duration -of default=noprint_wrappers=1:nokey=1 "$file"`
length_round_up=$(( ${length%.*} + 1 ))
total_bitrate=$(( $target_size / $length_round_up ))
audio_bitrate=$(( 128 * 1000 )) # 128k bit rate
video_bitrate=$(( $total_bitrate - $audio_bitrate ))
echo "Please Wait" > z-Conversion-Started.txt
ffmpeg -i $file -filter:v "scale='min(1280,iw)':min'(800,ih)':force_original_aspect_ratio=decrease,pad=1280:800:(ow-iw)/2:(oh-ih)/2" -b:v $video_bitrate -maxrate:v $video_bitrate -bufsize:v $(( $target_size / 20 )) -b:a $audio_bitrate "${file%%.mp4}".webm
mv $file $finsh
rm z-Conversion-Started.txt
done
for fileout in $inp*.webm
do
mv -- "$fileout" "$out"
done
