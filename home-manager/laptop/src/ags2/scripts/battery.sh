#!/bin/sh

upower -i $(upower -e | grep battery) | grep -E "percentage" | awk '{print $2}'
