#!/bin/sh

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <argument>"
    exit 1
fi

# Assign the argument to a variable
ACTION=$1

# Perform actions based on the argument
case $ACTION in
    #default)
    #    cp ~/.config/themes/themes/kitty_colors_default.conf ~/.config/themes/kitty_colors.conf
    #    cp ~/.config/themes/themes/default_colors.css ~/.config/ags/style/colors.css
    #    swww img ~/Pictures/active_wallpaper/darker_catpuccin.jpg
    #    hyprctl keyword general:col.active_border "rgba(8ee0d4ee) rgba(e69ea8ee) 45deg"
    #    hyprctl keyword decoration:blur:enabled false
    #    ;;

    default-trans)
        cp ~/.config/themes/themes/default/kitty_colors.conf ~/.config/themes/kitty_colors.conf
        cp ~/.config/themes/themes/default/ags_colors.conf ~/.config/ags/style/colors.css
        swww img ~/Pictures/active_wallpaper/darker_catpuccin.jpg
        hyprctl keyword general:col.active_border "rgba(8ee0d4ee) rgba(e69ea8ee) 45deg"
        hyprctl keyword decoration:blur:enabled true
        hyprctl keyword decoration:blur:size 10
        hyprctl keyword decoration:blur:passes 3
        ;;

    sakura)
        cp ~/.config/themes/themes/sakura/kitty_colors_sakura.conf ~/.config/themes/kitty_colors.conf
        cp ~/.config/themes/themes/sakura/ags_colors.css ~/.config/ags/style/colors.css
        swww img ~/Pictures/active_wallpaper/red_sakura.jpg
        hyprctl keyword general:col.active_border "rgba(d93840ee) rgba(731015ee) 45deg"
        hyprctl keyword decoration:blur:enabled true
        hyprctl keyword decoration:blur:size 10
        hyprctl keyword decoration:blur:passes 2
        ;;

    *)
        echo "invalid argument"
        exit 1
        ;;
esac
