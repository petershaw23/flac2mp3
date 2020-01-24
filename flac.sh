#!/bin/bash
#bash script to convert flac to mp3 using ffmpeg and "parallel"

parallel ffmpeg -i {} -qscale:a 0 {.}.mp3 ::: ./*.flac # convert flac to mp3

# move flac to flac dir
mkdir flac
mv *.flac ./flac

# move mp3 to mp3 dir
mkdir mp3
mv *.mp3 ./mp3


# move meta files to info folder
mkdir info
mv *.jpg ./info
mv *.pnf ./info
mv *.png ./info
mv *.log ./info

# delete unwanted stuff
rm *.m3u
rm *.cue
rm *.url
rm *.nfo
rm *.txt
rm *.html

# add flac folder to zip file
7z a flac.7z flac\
