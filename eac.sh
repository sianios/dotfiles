#!/bin/bash
# Extracts the following
if [ -f "$1" ]; then
    case "$1" in
        *.tar.gz)   tar xzvf "$1" ;;
        *.tar.bz2)  tar xvzf "$1" ;;
        *.zip)      unzip "$1" ;;
        *.rar)      unrar x "$1" ;;
        *.7z)       7z x "$1" ;;
        *.gz)       gzip -dk "$1" ;;
        *)          echo "Not able to extract $1" ;;
    esac
fi
