#! /bin/bash

#wget --no-clobber -r –level=0 -np -R "*.html*" -P /webgrab "$URL"

wget -R "*.html" -r –level=0 -E –ignore-length -x -k -p -erobots=off -np -N $URL