#!/bin/bash

ZOOM=0.46
{ /Applications/VLC.app/Contents/MacOS/VLC --no-audio --zoom $ZOOM ~/MEGA/MEGAsync/Stream/Sphene.vlc & } 2>/dev/null 
{ /Applications/VLC.app/Contents/MacOS/VLC --no-audio --zoom $ZOOM ~/MEGA/MEGAsync/Stream/Rupee.vlc & } 2>/dev/null
{ /Applications/VLC.app/Contents/MacOS/VLC --no-audio --zoom $ZOOM ~/MEGA/MEGAsync/Stream/DrivewayCam.vlc & } 2>/dev/null
{ /Applications/VLC.app/Contents/MacOS/VLC --no-audio --zoom $ZOOM ~/MEGA/MEGAsync/Stream/RuckusCam.vlc & } 2>/dev/null
