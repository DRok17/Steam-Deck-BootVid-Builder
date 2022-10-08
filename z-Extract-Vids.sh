#!/bin/sh
mkdir -p All-Vids
find Vids '*.webm' -exec cp -vuni '{}' "./All-Vids" ";"
rm -rf Vids
mkdir -p Vids
rm ./All-Vids/z-prep-apply-boot.sh