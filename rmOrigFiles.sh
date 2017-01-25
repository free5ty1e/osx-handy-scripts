#!/bin/bash

find $HOME -name \*.orig -type f -print0 | xargs -0 rm -f