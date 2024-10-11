#!/bin/sh

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <argument>"
    exit 1
fi

# Assign the argument to a variable
ACTION=$1

# Perform actions based on the argument
case $ACTION in
    trans)
        cp ~/.config/themes/themes/kitty_colors_transparent.conf ~/.config/themes/kitty_colors.conf
        ;;
    solid)
        cp ~/.config/themes/themes/kitty_colors_solid.conf ~/.config/themes/kitty_colors.conf
        ;;
    *)
        echo "invalid argument"
        exit 1
        ;;
esac
