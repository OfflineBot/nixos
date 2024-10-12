#!/bin/sh

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <argument>"
    exit 1
fi

# Assign the argument to a variable
ACTION=$1

# Perform actions based on the argument
case $ACTION in
    default)
        cp ~/.config/themes/themes/kitty_colors_default.conf ~/.config/themes/kitty_colors.conf
        ;;
    sakura)
        cp ~/.config/themes/themes/kitty_colors_sakura.conf ~/.config/themes/kitty_colors.conf
        ;;
    *)
        echo "invalid argument"
        exit 1
        ;;
esac
