#!/bin/bash
# Simple script to extract compressed files and compress files to
# .tar.gz files
case "$1" in
    -c|-C) tar cvzf "${2%%/}.tar.gz" "${2%%/}/";;
    -e|-E) if [ -f "$2" ]; then
        case "$2" in
            *.tar.gz)   tar xzvf "$2" ;;
            *.tar.bz2)  tar xvjf "$2" ;;
            *.tar.xz)   tar xvJf "$2" ;;
            *.tar)      tar xvf "$2" ;;
            *.zip)      unzip "$2" ;;
            *.rar)      unrar x "$2" ;;
            *.7z)       7z x "$2" ;;
            *.gz)       gzip -dk "$2" ;;
            *.xz)       xz -dk "$2" ;;
            *)          echo "Not able to extract $2" ;;
        esac
        else
            echo "File not found"
        fi ;;
    *) echo -e "Usage [option] file\nOptions:\n-c Compress\n-e Extract" ;;
esac
