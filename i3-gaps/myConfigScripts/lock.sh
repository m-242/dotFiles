#!/bin/bash
# from https://www.reddit.com/r/unixporn/comments/3358vu/i3lock_unixpornworthy_lock_screen/
ICON=$HOME/.config/i3/myConfigScripts/icon.png
TMPBG=/tmp/screen.png
scrot -z /tmp/screen.png
convert $TMPBG -scale 10% -scale 1000% $TMPBG
convert $TMPBG $ICON -gravity center -composite -matte $TMPBG
i3lock -u -i $TMPBG
