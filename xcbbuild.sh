#!/bin/bash
# Build D headers for XCB binding

#for example, the location of the 2007 version:
#MODULE_LOCATION=-m std.c.linux.X11.xcb

if [ $# -eq 0 ]; then
    echo "Usage: xcbbuild.sh <file1.xml> ..."
else
    mkdir -p xcb
    cp -p xcb.d xcb
    for FL in "$@"
        do
        dest=$(echo "$FL" | sed -e 's/\.xml/.d/')
        echo -n - $dest...
        ./d_client.py $MODULE_LOCATION "$FL"
        echo
        done
fi
