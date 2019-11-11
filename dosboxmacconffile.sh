#!/bin/bash

#PARAMETER 1: CONF_FILE optional output folder if we want to decompress to somewhere else
if [ -z "$1" ]; then
    echo "parameter 1: CONF_FILE is optional!  Defaulting to current folder..."
    CONF_FILE="dosbox.conf"    
else
	CONF_FILE="$1"
fi

/Applications/dosbox.app/Contents/MacOS/DOSBox --conf "$CONF_FILE"

