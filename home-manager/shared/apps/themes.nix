{ config, pkgs, lib, ... }:
{
    home.activation.themesFolder = lib.mkAfter ''
        mkdir -p ~/.config/themes
        cp -r ${../src/themes}/* ~/.config/themes
        chmod -R 777 ~/.config/themes
    '';

    home.activation.themesTmgr = lib.mkAfter ''
        mkdir -p ~/.config/tmgr
        cp -r ${../src/tmgr}/* ~/.config/tmgr
        chmod -R 777 ~/.config/tmgr
        chmod +x ~/.config/tmgr
    '';
}
