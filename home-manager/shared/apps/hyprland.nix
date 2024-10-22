{ config, pkgs, x ? "none", ... }:
let 
    homeManagerDir = "${config.home.homeDirectory}/System2/home-manager";
    monitorSetup = if x == "laptop" then ''
monitor=,preferred,auto,1
    ''
    else ''
monitor=HDMI-A-1,1920x1080,-1920x230,1
monitor=DP-3,1920x1080@144,0x0,1
monitor=DP-2,1280x1024@75,1920x330,1

workspace=1,monitor:HDMI-A-1
workspace=2,monitor:DP-3
workspace=3,monitor:DP-2

monitor=Unknown-1,disable
    '';
in
{
    home.file.".config/hypr/README.md".source = config.lib.file.mkOutOfStoreSymlink "${homeManagerDir}/shared/src/hypr/README.md";
    home.file.".config/hypr/hypr_config".source = config.lib.file.mkOutOfStoreSymlink "${homeManagerDir}/shared/src/hypr/hypr_config";
    home.file.".config/hypr/scripts".source = config.lib.file.mkOutOfStoreSymlink "${homeManagerDir}/shared/src/hypr/scripts";


    ##### the main file! #####
    home.file.".config/hyprland.conf".text = ''
exec-once = ags
exec-once = swww-daemon
#exec-once sleep1 && swww img ~/Pictures/active_wallpaper/cyan_surface.jpg
exec-once = sleep 1 && swww img ~/Pictures/active_wallpaper/cyan_surface.jpg >> ~/logs/swww.log
exec = gsettings set org.gnome.desktop.interface gtk-theme "Adwaita-dark"
exec = gsettings set org.gnome.desktop.interface color-scheme "prefer-dark"

${monitorSetup}

layerrule=blur,menu
layerrule=blur,logout
layerrule=blur,applauncher
layerrule=blur,stats
layerrule=blur,bar-0
layerrule=blur,bar-1
layerrule=blur,bar-2
layerrule=blur,bar-3

bind = ALT, F, exec, python3 ~/Coding/py/theme_border_changer/main.py >> ~/logs/main.py.log

exec-once = hyprctl setcursor Adwaita 24

$terminal = kitty
$fileManager = nemo

env = QT_QPA_PLATFORMTHEME,qt5ct # change to qt6ct if you have that


dwindle {
    # See https://wiki.hyprland.org/Configuring/Dwindle-Layout/ for more
    pseudotile = yes # master switch for pseudotiling. Enabling is bound to mainMod + P in the keybinds section below
    preserve_split = yes # you probably want this
}

master {
    # See https://wiki.hyprland.org/Configuring/Master-Layout/ for more
    new_status = master
}


gestures {
    # See https://wiki.hyprland.org/Configuring/Variables/ for more
    workspace_swipe = off
}

misc {
    # See https://wiki.hyprland.org/Configuring/Variables/ for more
    force_default_wallpaper = 0 # Set to 0 or 1 to disable the anime mascot wallpapers
}

# Example per-device config
# See https://wiki.hyprland.org/Configuring/Keywords/#per-device-input-configs for more
device {
    name = epic-mouse-v1
    sensitivity = 0
}

# windowrulev2 = float,class:^(kitty)$,title:^(kitty)$
# See https://wiki.hyprland.org/Configuring/Window-Rules/ for more
windowrulev2 = suppressevent maximize, class:.* # You'll probably like this.

source=~/.config/hypr/hypr_config/theme_config.conf
source=~/.config/hypr/hypr_config/keybinds.conf

    '';
}
