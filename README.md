Just my current dot files for my arch linux install

The customizations are just me wanting it and doing it. There is nothing really here and most of it is little customization

The point of this is for me to just cp if for whatever reason I needa reinstall arch again... gotta love rolling release :D Ive had to reinstall a couple times for diff reasons. Most recent was instability with Linux kernal so I had to swap to Linux-LTS.

I made a very simple shell script that checks differences in files so I dont have to worry about doing it myself manually or changing this every time I modify something

# Configs, Programs, Usage
- i3 - I prefer a wm over de
    - flameshot - screen shot
    - nitrogen - wallpaper
    - nm-applet - gui for network manager
    - spotify -... well music :D
    - xrandr - I think it comes from like xorg or just whatever but im using it to set up my external display to use
    - picom - allows for my transparency lmao, thats all ik of this vid compositer
    - poly bar - prefer over i3 bar
    - i3 lock - locks my screen duh. I use flameshot to screenshot my screen then imagemagick to blur the image and then use it for my i3 lock as the lock screen instead of a flashbang of pure white (all done in i3lock.sh)
- picom - Just a compositer that I use for the transparency of terminal.
- polybar - barely modified configs but I prefer this asthetic out of the box over i3 bar
- alacritty - current prefered terminal of choice since out of box its nice
    - neofetch - well duh
        - lolcat - no idea what it does I just installed for the gradient on neofetch lol
    - acpi - to tell battery percentage, I have it call for acpi everytime I open the terminal
- bashrc - well I just use bash no particular reason why. Alias is fun + gotta have the neofetch when I open terminal
- vimrc - current vim set up. Im still trying to learn more keybindings before fousing on the extensions. Im currently happy with my vimrc anyways
- dunst - my notification daemon. I didnt have it until recently because I did not care as much about notifications; however, it came to my atention that some apps need a notification daemon and would become temporarilty unresponsive without one (spotify, discord, and flameshot). Some apps would straight up freeze without one (tetrio if I tabbed out) so it became a necessity for me I guess
- diff.sh - it originally was 3 separate shell scripts that I had then turned into one. This just automates the tasks of finding differences between my repo and my acutal config files so I dont have to spend a few mins doing it when I can do it in seconds. It took a while to do. Both making the 3 shells and also combining them since I found more issues.

# Images/Screenshots

My arch linux is pretty barebones. Little customization here and there. There was a point in time where I went over like 4 months without a wall paper lmao. Anyways here are some images

## Wallpapers

![img](./images/homeSetup.png)

white is form the diff monitor resolutions. The left one, is my laptop screen and is acutally smaller (13.5" is the size) than my monitor (20 somthing")

Wallpaper is being done with nitrogen

## Notes

![img](./images/takingNotes.png)

Basically how I am taking lecture notes at home. Source on left, vim on right and markdown preview below the vim instance.

If I use libre office for an assignment then soruce on left, libreoffice writer on right

# Terminal

![img](./images/terminal.png)

