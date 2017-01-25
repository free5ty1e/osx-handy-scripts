#!/bin/bash

python $ANDROID_HOME/platform-tools/systrace/systrace.py --time=10 -o ~/traces/androidTrace.html sched gfx view wm