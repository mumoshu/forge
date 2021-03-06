#!/bin/sh

TARGET="$1"

if [ -z "${TARGET}" ]; then
    echo "usage: devcurl.sh <output-file>"
else
    curl https://s3.amazonaws.com/datawire-static-files/forge/$(curl https://s3.amazonaws.com/datawire-static-files/forge/latest.url?x-download=datawire)/forge?x-download=datawire -o "${TARGET}"
    chmod a+x "${TARGET}"
fi
