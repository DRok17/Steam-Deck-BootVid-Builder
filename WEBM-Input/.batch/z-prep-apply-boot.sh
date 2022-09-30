#!/bin/bash
for f in *.webm
do
   cp -- "$f" ../../1boot/
done
cd ../../1boot
sh movefiles.sh
qdbus org.kde.Shutdown /Shutdown org.kde.Shutdown.logout