#!/bin/sh

amixer get Master | grep '\[on\]' > /dev/null && echo "umuted" || echo "muted"
