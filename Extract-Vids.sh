#!/bin/sh
mkdir -p All
find Vids '*.webm' -exec cp -vuni '{}' "./All" ";"
rm -rf Vids
mkdir -p Vids
rm ./All/z-prep-apply-boot.sh
