#!/bin/bash

for i in *.mkv; do
  name=$(basename -s .mkv "$i")

  ffmpeg -i $i -i ${name}.en.srt -i ${name}.cs.srt -map 0:v -map 0:a -map 1 -map 2 -c:v copy -c:a copy -c:s copy -metadata:s:s:0 language=eng -metadata:s:s:1 language=cze new/$i
done
