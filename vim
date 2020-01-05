#!/bin/bash

if [ -w $2 ]; then
    /usr/bin/vim $1 $2
else
    sudo /usr/bin/vim $1 $2
fi
