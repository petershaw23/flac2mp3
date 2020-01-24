#!/bin/bash
#bash script to convert flac to mp3 using ffmpeg and "parallel"

parallel ffmpeg -i {} -qscale:a 0 {.}.mp3 ::: ./*.flac

mkdir flac
mv *.flac ./flac
mkdir mp3
mv *.mp3 ./mp3
mkdir info
mv *.jpg ./info
mv *.png ./info
rm *.txt
rm *.nfo
