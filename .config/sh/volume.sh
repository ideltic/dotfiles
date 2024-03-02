#! /usr/bin/env bash

# Author: sharpicx 

case $1 in
        up)
                pamixer -i 5 -u
                volume="$(pamixer --get-volume)"
                notify-send "VOLUME" "Volume is now $volume%" -h int:value:$volume -i audio-volume-high -h string:x-canonical-private-synchronous:volume -u low -t 2000
                canberra-gtk-play -i audio-volume-change -d "changevolume"
                ;;
        down)
                pamixer -d 5 -u
                volume="$(pamixer --get-volume)"
                notify-send "VOLUME" "Volume is now $volume%" -h int:value:$volume -i audio-volume-low -h string:x-canonical-private-synchronous:volume -u low -t 2000
                canberra-gtk-play -i audio-volume-change -d "changevolume"
                ;;
        mute)
                pamixer -t
                muted="$(pamixer --get-mute)"
                if $muted ; then
                        notify-send "VOLUME" "Volume muted" -i audio-volume-muted-blocking -u low -h string:x-canonical-private-synchronous:volume -u low -t 2000
                else
                        notify-send "VOLUME" "Volume no longer muted" -i audio-volume-high -u low -h string:x-canonical-private-synchronous:volume -u low -t 2000
                        canberra-gtk-play -i audio-volume-change 
                fi
                ;;
esac