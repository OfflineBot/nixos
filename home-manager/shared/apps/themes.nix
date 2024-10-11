{ config, pkgs, lib, ... }:
{
    home.activation.themesFolder = lib.mkAfter ''
        mkdir -p ~/.config/themes
        cp -r ${../src/themes}/* ~/.config/themes
        chmod -R 777 ~/.config/themes
    '';

    home.activation.themesTmgr = lib.mkAfter ''
        mkdir -p ~/Apps
        cp -r ${../src/theme_mgr/tmgr.sh} ~/Apps/tmgr.sh
        chmod +x ~/Apps/tmgr.sh
    '';
}
