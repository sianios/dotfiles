#!/bin/bash
# Random image for background
# Ececute at boot using crontab
bgdir="$HOME/Images/wallpapers/"
img=$(ls $bgdir | shuf -n1)
fbsetbg $bgdir$img
