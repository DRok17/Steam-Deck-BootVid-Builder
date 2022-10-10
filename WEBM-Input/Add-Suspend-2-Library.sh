#!/bin/sh
cd .
Vids="../Suspends/"
Script="./.batch/z-prep-apply-suspend.sh"
cd ./.batch/
chmod +x z-prep-apply-suspend.sh
cd ..
for f in *.webm
do
  subdir=${f%%.*}
  [ ! -d "$subdir" ] && mkdir -- "$subdir"
  mv -- "$f" "$subdir"
  cp -- "$Script" "$subdir"
  mv -- "$subdir" "$Vids"
done
