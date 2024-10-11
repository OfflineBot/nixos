{ config, pkgs, lib, ... }:
{
    home.activation.copyKittyConfig = pkgs.lib.mkAfter ''
        mkdir -p ${config.home.homeDirectory}/.config/themes
        cp -r ${../src/themes}/* ~/.config/themes
    '';
}
