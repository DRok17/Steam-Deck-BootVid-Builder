#!/bin/sh
cd .
Vids="../Vids/"
Script="./.batch/z-prep-apply-boot.sh"
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
