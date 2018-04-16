#!/bin/bash

find . -name "*.zip" -execdir unzip -o {} \; -exec /bin/rm {} \;
