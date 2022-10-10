#!/bin/bash
for f in *.webm
do
   cp -- "$f" ../../1boot/
done
cd ../../1boot
echo "sus" > sus.txt
sh movefiles.sh