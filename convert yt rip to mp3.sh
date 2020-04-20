#!/bin/bash

for i in *.webm;
  do name=`echo "$i" | cut -d'.' -f1`
  echo "$name"
  ffmpeg -i "$i" -codec:a libmp3lame -b:a 320k "${name}.mp3"
done

for i in *.mkv;
  do name=`echo "$i" | cut -d'.' -f1`
  echo "$name"
  ffmpeg -i "$i" -codec:a libmp3lame -b:a 320k "${name}.mp3"
done

for i in *.mp4;
  do name=`echo "$i" | cut -d'.' -f1`
  echo "$name"
  ffmpeg -i "$i" -codec:a libmp3lame -b:a 320k "${name}.mp3"
done