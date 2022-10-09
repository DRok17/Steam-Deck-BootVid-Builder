#!/bin/bash
for f in *.sh
do
   chmod +x "$f"
done
cd ./1boot
for f in *.sh
do
   chmod +x "$f"
done
cd ../Converter
for f in *.sh
do
   chmod +x "$f"
done
cd ../WEBM-Input
for f in *.sh
do
   chmod +x "$f"
done
cd ..
echo "Scripts" > Execute-Complete.txt
sleep 3
rm Execute-Complete.txt