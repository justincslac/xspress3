#!/bin/sh
# This file was automatically generated on Thu 03 Jul 2014 15:09:08 BST from
# source: /home/npr78/diamond/support/xspress3/etc/makeIocs/example32Channel.xml
# 
# *** Please do not edit this file: edit the source file instead. ***
# 
cd "$(dirname "$0")"
if [ -n "$1" ]; then
    export EPICS_CA_SERVER_PORT="$(($1))"
    export EPICS_CA_REPEATER_PORT="$(($1 + 1))"
    [ $EPICS_CA_SERVER_PORT -gt 0 ] || {
        echo "First argument '$1' should be a integer greater than 0"
        exit 1
    }
fi
exec ./example32Channel stexample32Channel.boot
