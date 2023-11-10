#!/bin/bash
echo "Flattening subdirectories of current folder into current folder..."

#GNU, Linux, faster:
#find /dir1 -mindepth 2 -type f -exec mv -t /dir1 -i '{}' +

#Universal, slower:
find . -mindepth 2 -type f -exec mv -i '{}' . ';'
