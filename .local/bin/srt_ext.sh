#!/bin/bash

for i in *.mkv; do
  ffmpeg -i $i -map 0:s:0 ${i}.srt
done

