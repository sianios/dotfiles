#!/bin/bash

if [ -w $1 ]; then
    /usr/bin/vim $1
else
    sudo /usr/bin/vim $1
fi
