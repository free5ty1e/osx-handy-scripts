#!/bin/bash

find . -type f -name "*.gz" -exec gunzip -vf {} \; -exec /bin/rm {} \;
