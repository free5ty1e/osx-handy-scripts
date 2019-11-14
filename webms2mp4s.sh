#!/bin/bash

find . -name "*.webm" -execdir HandBrakeCLI --preset "Matroska/H.264 MKV 1080p30" --encoder-preset "veryslow" --two-pass --rate "60.0" --vfr --input "{}" --output "{}.mp4" \; -exec /bin/rm "{}" \;
 

