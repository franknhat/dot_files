#!/bin/bash
mkdir temp
#very lazy of me since for my dual monitor setup the "smaller" monitor has like a white bar under it from the blur
flameshot full -p temp/img.png
convert temp/img.png -blur 0x8 temp/blur.png
i3lock -i temp/blur.png
rm -r temp
