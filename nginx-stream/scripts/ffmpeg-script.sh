#!/bin/bash
# Sample Command
## convert to hls segment
ffmpeg -i /stream-video/video.mp4 -f hls \
    -hls_time 3 \
    -hls_playlist_type vod \
    -hls_flags independent_segments \
    -hls_segment_type mpegts \
    -hls_segment_filename stream-video/gls/stream_%v/data%02d.ts \
    stream-video/hls/stream_%v.m3u8

## convert to dash segment
ffmpeg -i /stream-video/ma-ma.mp4 \
    -c:v libx264 \
    -c:a aac -preset slower \
    -tune animation \
    -f dash stream-video/dash/stream_0.mpd