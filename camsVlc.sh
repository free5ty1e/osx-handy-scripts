#!/bin/bash

ZOOM=0.46
{ /Applications/VLC.app/Contents/MacOS/VLC --no-audio --zoom $ZOOM ~/MEGAsync/Stream/Sphene.vlc & } 2>/dev/null 
{ /Applications/VLC.app/Contents/MacOS/VLC --no-audio --zoom $ZOOM ~/MEGAsync/Stream/Rupee.vlc & } 2>/dev/null
{ /Applications/VLC.app/Contents/MacOS/VLC --no-audio --zoom $ZOOM ~/MEGAsync/Stream/DrivewayCam.vlc & } 2>/dev/null
{ /Applications/VLC.app/Contents/MacOS/VLC --no-audio --zoom $ZOOM ~/MEGAsync/Stream/RuckusCam.vlc & } 2>/dev/null
