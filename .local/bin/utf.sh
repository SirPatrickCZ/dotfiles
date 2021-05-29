#!/bin/bash

for i in *.srt; do
  iconv -f "windows-1250" -t "utf-8" $i -o new/$i
done
