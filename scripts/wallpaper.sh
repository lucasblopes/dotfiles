#!/bin/sh

wallpaper=$(ls ~/wallpapers/ | rofi -show -dmenu -config ~/.config/rofi/menu.rasi -i -lines 50)

[ $wallpaper -z ] || nitrogen --set-auto ~/wallpapers/$wallpaper
