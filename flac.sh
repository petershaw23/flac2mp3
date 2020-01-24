#!/bin/bash
#bash script to convert flac to mp3 using ffmpeg and "parallel"

parallel ffmpeg -i {} -qscale:a 0 {.}.mp3 ::: ./*.flac

mkdir flac
mv *.flac ./flac

mkdir mp3
mv *.mp3 ./mp3


# move meta files to info folder
mkdir info
mv *.jpg ./info
mv *.pnf ./info
mv *.png ./info


# delete unwanted stuff
rm *.m3u
rm *.cue
rm *.pls
rm *.url
rm *.nfo
rm *.txt
rm *.html
rm *.htm
mv *.log

# add flac folder to zip file
7z a flac.zip flac\
