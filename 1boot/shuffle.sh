#!/usr/bin/env bash
shuf_path="/home/deck/homebrew/.shuffle/"
ovr_path="/home/deck/.steam/root/config/uioverrides/movies/deck_startup.webm"
cd $shuf_path
shopt -s nullglob
files=(*.webm)
shopt -u nullglob
if [[ ${#files[@]} -eq 0 ]]; then
  echo "No matching files!"
  exit
fi
file=${files[$((RANDOM % ${#files[@]}))]}
cp -- "$file" "$ovr_path"
exit