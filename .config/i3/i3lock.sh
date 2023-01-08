#!/bin/bash
#scuffed since for my dual monitor setup the "smaller" monitor has like a white bar under it from the blur. Smaller as in my larger external display
mkdir /tmp/temp
flameshot full -p /tmp/temp/img.png
convert /tmp/temp/img.png -blur 0x8 /tmp/temp/blur.png
i3lock -i /tmp/temp/blur.png
rm -r /tmp/temp
