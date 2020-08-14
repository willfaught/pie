#!/bin/sh

set -x

sqlite3 ~/Library/Application\ Support/Dock/desktoppicture.db "update data set value = '/Library/Desktop Pictures/Milky Way.jpg'" # Set the wallpaper

killall Dock
