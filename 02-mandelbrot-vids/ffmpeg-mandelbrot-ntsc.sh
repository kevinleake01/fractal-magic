#!/bin/sh

FONTFILE=/usr/share/fonts/TTF/VeraMono.ttf

ffmpeg -f lavfi -i mandelbrot=s=640x480:r=30000/1001 \
  -vf "drawtext=fontfile=$FONTFILE: \
  fontsize=25: fontcolor=0xFFFFFF: text='': timecode='00\:00\:00\;00': r=30: box=1: boxcolor=0x000000@1" \
  -target ntsc-dvd -frames:v 10000 mandelbrot-ntsc.mpg


