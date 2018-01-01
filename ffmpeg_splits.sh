#!/bin/bash

#ffmpeg -i test.mp4 -c:v libx264 -c:a aac  -strict -2 -f hls ./video_output/output.m3u8 hls_time 5  

ffmpeg -i test.mp4 -c copy -map 0 -f segment -segment_list playlist.m3u8 -segment_time 5 ./video_output/output%03d.ts  

