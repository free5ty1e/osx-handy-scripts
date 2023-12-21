#!/bin/bash

if [ $# -eq 0 ]
    then
        echo "Requires a usb drive location such as /Volumes/usb0 as first parameter, and a size in MB for the second parameter"
else 


    # Set the path to your USB flash drive
    usb_drive="$1"

    size_mb=$2
    echo "Testing $usb_drive with $size_mb MB..."

    # Set the path to the test file
    test_file="testfile.img"

    # Set the size of the test file (adjust as needed)
    file_size="16M"

    # Generate random data for the test file
    dd if=/dev/urandom of="$test_file" bs=1M count=$size_mb status=progress

    # Write the test file to the USB flash drive
    dd if="$test_file" of="$usb_drive/$test_file" bs=1M status=progress

    # Verify the file on the USB flash drive
    diff "$test_file" "$usb_drive/$test_file"

    # Clean up - remove the test file
    rm "$test_file"
    rm "$usb_drive/$test_file"
fi
