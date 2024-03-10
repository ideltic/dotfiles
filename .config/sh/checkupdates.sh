#!/usr/bin/sh

number_of_updates=$(checkupdates | wc -l)

if [ $number_of_updates -gt 0 ]
then
	notify-send -a "Systemd.timer Update Checker" "There are $number_of_updates updates available!"
# Uncomment next 2 lines if you want to be notified even when there are no updates.
#else
#	notify-send -a "Systemd.timer Update Checker" "No updates available..."
fi