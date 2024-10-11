{ config, pkgs, lib, ... }:
{
    home.activation.themesFolder = lib.mkAfter ''
        mkdir -p ~/.config/themes
        cp -r ${../src/themes}/* ~/.config/themes
        chmod -R 777 ~/.config/themes
    '';
}
