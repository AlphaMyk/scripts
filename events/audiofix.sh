#!/bin/bash
##################################################
# Pulseaudio and mpd don't always play nice      #
# Needed to do this on a pinebook to get things  #
# working again... need to sudo                  #
##################################################

killall pulseaudio > /dev/null 2>&1
systemctl restart mpd
