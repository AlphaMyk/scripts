#!/bin/bash

##################################################
# Script to run music and pictures for a party   #
# Requirements:                                  #
#             - mpd                              #
#             - mpc                              #
#             - feh                              #
##################################################

# Define variables here
DIR=`pwd`
PHOTODIR="$DIR/Photos"
MUSICDIR="$DIR/Music"
INTERVAL=3

# disable screen blanking on the pi
xset s off
xset -dpms
xset s noblank

# Set up our music
mpc clear
mpc listall | shuf | mpc add
mpc play

# Set up our slideshow
feh -rzsFZ -D $INTERVAL $PHOTODIR

##################################################
# Notes:                                         #
# Pulse audio and mpd sometimes do not play nice #
# Running as your user helps with this           #
# Configure /etc/mpd.conf for:                   #
#    - user                                      #
#    - pid file                                  #
#    - music location                            #
##################################################
