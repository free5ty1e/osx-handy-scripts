#!/bin/bash
mkdir jpegs; sips -s format jpeg *.png --out jpegs && rm *.png
