#!/bin/bash

# version1:
##for a in ./*.flac; do
#version1b:
#find -type f -name "*.flac" -print0 | while read -d $'\0' a; do
#  < /dev/null ffmpeg -i "$a" -qscale:a 0 "${a[@]/%flac/mp3}"
#done

#version2, needs package "parallel":
parallel ffmpeg -i {} -qscale:a 0 {.}.mp3 ::: ./*.flac
