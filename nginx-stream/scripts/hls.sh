#!/bin/bash

# chmod +x scripts/hls.sh

# ffmpeg -i /stream-video/ma-ma.mp4 \
#     -hls_time 3 \
#     -hls_playlist_type vod \
#     -hls_flags independent_segments \
#     -hls_segment_type mpegts \
#     -hls_segment_filename stream-video/hls/master_%.ts stream-video/hls/master.m3u8

ffmpeg -i /stream-video/ma-ma.mp4 \
    -hls_time 10 \
    -hls_playlist_type vod \
    -f hls stream-video/hls/master.m3u8