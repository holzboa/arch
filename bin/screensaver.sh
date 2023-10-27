#!/bin/bash


#####################Directions######################
# KDE didn't have a screensaver, so created this to either display pics or play videos  
# Dale/Zepherusbane
#
# NOTE:  Call this script from KDE's energy saving configuration, set to use a script after X minutes.
# This is located under "Power Managment->Energy Saving" in KDE settings, note 
# this was for KDE Plasma 5.21.4
# it's probably still there even in other versions, just look for energy settings
# Check the checkbox to "run script", add a link to this script (I put this in my home dir in a scripts dir)
# don't forget to chmod your script to be executable.
# you probably want to either uncheck or adjust your dim screen or screen energy savings options or your
# screen will still black out based on those, I still used these, just increased the time.
#####################################################

# Start a slideshow of my curated pics for a screensaver
#-s for slideshow, -f for fullscreen
# uncomment gwenview line, comment the mpv line
#gwenview -s -f /run/media/dale/DATA/mypics/screen-saver-pics/

# Use this line to play all the movies in a directory, shuffle style.
# this directory has a bunch of the cached files from the Apple TV screensaver that I like.
# --shuffle to randomly play the videos, -fs to open in full screen mode
# uncomment mpv line, comment the gwenview line
mpv --shuffle /media/SSD/Videos/screensaver -fs
#/usr/bin/deepin-screensaver
