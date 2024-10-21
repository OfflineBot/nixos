#!/bin/sh

VALUE=$(amixer get Master | grep -o '[0-9]*%' | head -n 1)
MUTE=$(amixer get Master | grep '\[off\]' > /dev/null && echo "mute" || echo "unmute")

if [ "$MUTE" = "mute" ]; then
    echo "mute [$VALUE]"
else
    echo "$VALUE"
fi
