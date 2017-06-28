#!/bin/bash
source .env

cctv_baseurl=$CCTV_BASEURL
sources=( 51 52 53 54 55 57 ) # list of IP camera hosts

# start ffmpeg inputs in its own shell
for source in "${sources[@]}"; do
  echo "starting stream $source"
  (
    $FFMPEG_LOC -loglevel "error" -r 15 -i $CCTV_BASEURL$source/onvif1 -vcodec copy -an http://localhost:8090/cam$source.ffm
  ) &
  sleep 1
done; wait
