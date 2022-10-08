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